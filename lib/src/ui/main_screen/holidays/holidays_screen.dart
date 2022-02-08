import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/theme/app_theme.dart';
import 'package:hr_app/src/utils/utils.dart';

class HolidaysScreen extends StatefulWidget {
  const HolidaysScreen({Key? key}) : super(key: key);

  @override
  _HolidaysScreenState createState() => _HolidaysScreenState();
}

class _HolidaysScreenState extends State<HolidaysScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          holidayWidget(
            context,
            "Leave name - this could be two line long text or more",
            "Head Office",
            DateTime.now(),
          ),
          holidayWidget(
            context,
            "Leave name - this could be two line long text or more",
            "ALL",
            DateTime.now(),
          ),
          holidayWidget(
            context,
            "Leave name - this could be two line long text or more",
            "ALl",
            DateTime.now(),
          ),
        ],
      ),
    );
  }
}

Widget holidayWidget(
    BuildContext context, String title, String name, DateTime dateTima) {
  double h = Utils.windowHeight(context);
  double w = Utils.windowWidth(context);
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              name,
              style: Utils.style(18 * h, 20, AppTheme.black, FontWeight.w500),
            ),
            content: Text(
              title,
              maxLines: 3,
              style: Utils.style(
                  16 * h, 20, AppTheme.black.withOpacity(0.5), FontWeight.w300),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8 * h),
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      "OK",
                      style: Utils.style(
                          18 * h, 24, AppTheme.blue, FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 16 * h, left: 16 * w, right: 8 * w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppTheme.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                getDate(dateTima.month) +
                    " " +
                    dateTima.day.toString() +
                    " " +
                    dateTima.year.toString(),
                style: Utils.style(18 * h, 24, AppTheme.blue, FontWeight.w500),
              ),
              SizedBox(
                width: 8 * h,
              ),
              Text(
                name,
                style: Utils.style(18 * h, 22, AppTheme.black, FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 8 * h,
          ),
          Text(
            title,
            style: Utils.style(
                16 * h, 24, AppTheme.black.withOpacity(0.5), FontWeight.w400),
          ),
          SizedBox(
            height: 8 * h,
          ),
          Container(
            height: 2,
            color: AppTheme.grey.withOpacity(0.5),
          )
        ],
      ),
    ),
  );
}
