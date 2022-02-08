import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/theme/app_theme.dart';
import 'package:hr_app/src/ui/main_screen/my_leave/new_leave_screen.dart';
import 'package:hr_app/src/utils/utils.dart';
import 'package:hr_app/src/widget/leave_widget.dart';

class MyLeaveScreen extends StatefulWidget {
  const MyLeaveScreen({Key? key}) : super(key: key);

  @override
  _MyLeaveScreenState createState() => _MyLeaveScreenState();
}

class _MyLeaveScreenState extends State<MyLeaveScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50 * h,
            color: const Color(0xFFF5F5F5),
            child: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'BALANCE',
                    style:
                        Utils.style(18, 24, AppTheme.blue, FontWeight.normal),
                  ),
                ),
                Tab(
                  child: Text(
                    'LEAVES',
                    style:
                        Utils.style(18, 24, AppTheme.blue, FontWeight.normal),
                  ),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                LeaveWidget.balanceWidget(
                  context,
                  'Opening Balance 2022',
                  "96 Days",
                  "56 Days",
                  "privilege",
                  "sick",
                  "leave",
                ),
                LeaveWidget.leavesWidget(
                  context,
                  "Leave type",
                  "Feb 1, 2022 - Feb 3, 2022  2 days",
                  "endDay",
                  "Feb 2, 2022 10:30AM",
                  "day",
                  "link@example.com",
                  "content",
                  Colors.red,
                ),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const NewLeaveScreen(),
            ),
          );
        },
        elevation: 10,
        backgroundColor: Colors.transparent,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.orange,
          ),
          child: Center(
            child: Text(
              "+",
              style: Utils.style(36, 40, AppTheme.white, FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
