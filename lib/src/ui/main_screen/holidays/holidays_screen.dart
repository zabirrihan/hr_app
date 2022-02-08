import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(name),
            content: Text(
              title,
              maxLines: 3,
              style: Utils.style(
                  18, 24, Colors.black.withOpacity(0.5), FontWeight.normal),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      "OK",
                      style: Utils.style(18, 24, Colors.blue, FontWeight.bold),
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
      padding: const EdgeInsets.only(top: 16, left: 16, right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
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
                style: Utils.style(18, 24, Colors.blue, FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                name,
                style: Utils.style(18, 22, Colors.black, FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: Utils.style(
                18, 24, Colors.black.withOpacity(0.5), FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 2,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}
