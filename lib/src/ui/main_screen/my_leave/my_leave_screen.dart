import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/bloc/leaves_bloc.dart';
import 'package:hr_app/src/model/leaves_model/balance_model.dart';
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
    balanceBloc.getBalance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50 * h,
            decoration: const BoxDecoration(
              color: Color(0xFFF5F5F5),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 8,
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                )
              ],
            ),
            child: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Balance',
                    style: TextStyle(
                      fontSize: 14 * h,
                      height: 18 / 14 * h,
                      fontFamily: AppTheme.fontFaomily,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Leaves',
                    style: TextStyle(
                      fontSize: 14 * h,
                      height: 18 / 14 * h,
                      fontFamily: AppTheme.fontFaomily,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3 * h,
              unselectedLabelColor: AppTheme.grey,
              labelColor: AppTheme.blue,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                StreamBuilder<BalanceModel>(
                    stream: balanceBloc.getAllBalance,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        BalanceModel? data = snapshot.data;
                        return LeaveWidget.balanceWidget(
                          context,
                          data,
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),
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
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppTheme.blue,
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
