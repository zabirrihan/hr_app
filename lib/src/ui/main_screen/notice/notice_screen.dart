import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/utils/utils.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          noticeWidget(context, "Here", "Notice", DateTime.now()),
        ],
      ),
    );
  }
}

Widget noticeWidget(
    BuildContext context, String title, String name, DateTime dateTima) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(name),
            content: Text(
              "fgjhbdkls;keorijknfdslmjierjkdgnlvreihbjkvoerihbkjvnkvjndfmj kdffodklmfdkv",
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
                  margin: EdgeInsets.symmetric(vertical: 8),
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
          Text(
            name,
            style: Utils.style(18, 22, Colors.black, FontWeight.w500),
          ),
          Text(
            getDate(dateTima.month) +
                " " +
                dateTima.day.toString() +
                " " +
                dateTima.year.toString(),
            style: Utils.style(14, 18, Colors.grey, FontWeight.w600),
          ),
          Container(
            width: 250,
            child: Text(
              "fgjhbdkls;keorijknfdslmjierjkdgnlvreihbjkvoerihbkjvnkvjndfmj kdffodklmfdkv",
              style: Utils.style(
                  18, 24, Colors.black.withOpacity(0.5), FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}
