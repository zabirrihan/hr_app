import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/theme/app_theme.dart';
import 'package:hr_app/src/utils/utils.dart';

class NewLeaveScreen extends StatefulWidget {
  const NewLeaveScreen({Key? key}) : super(key: key);

  @override
  _NewLeaveScreenState createState() => _NewLeaveScreenState();
}

class _NewLeaveScreenState extends State<NewLeaveScreen> {
  bool shouldCheck = false;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF5F5F5),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: Colors.transparent,
            child: const Icon(
              CupertinoIcons.arrow_left,
              color: AppTheme.grey,
            ),
          ),
        ),
        title: Text(
          "New Leave",
          style: Utils.style(22 * h, 28, AppTheme.black, FontWeight.w400),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16 * w, top: 16 * h, bottom: 16 * h),
            child: Text(
              "Application Date: 2022-01-23",
              textAlign: TextAlign.start,
              style: Utils.style(18, 24, AppTheme.black, FontWeight.normal),
            ),
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: AppTheme.blue.withOpacity(0.5),
          ),
          Container(
            margin: EdgeInsets.only(left: 16 * w, top: 16 * h, bottom: 16 * h),
            child: Text(
              "Leave Information",
              textAlign: TextAlign.start,
              style: Utils.style(20, 24, AppTheme.blue, FontWeight.bold),
            ),
          ),
          Container(
            height: 96 * h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 16 * w),
            padding: EdgeInsets.symmetric(horizontal: 4 * w),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: AppTheme.blue,
              ),
            ),
            child: TextFormField(
              controller: _controller,
              onChanged: (trt) {
                setState(() {});
              },
              maxLines: 15,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Reason",
                hintStyle:
                    Utils.style(14, 16, AppTheme.grey, FontWeight.normal),
              ),
            ),
          ),
          SizedBox(
            height: 4 * h,
          ),
          Row(
            children: [
              const Spacer(),
              Text(
                '${_controller.text.length}/500',
                style: Utils.style(14, 18, AppTheme.grey, FontWeight.normal),
              ),
              SizedBox(
                width: 16 * w,
              ),
            ],
          ),
          SizedBox(
            height: 16 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              Container(
                height: 48 * h,
                width: MediaQuery.of(context).size.width - 32 * w,
                padding: EdgeInsets.symmetric(horizontal: 4 * w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.blue,
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Select apply to",
                    hintStyle:
                        Utils.style(14, 16, AppTheme.grey, FontWeight.normal),
                    suffixIcon: Icon(Icons.keyboard_arrow_down_sharp,
                        size: 24 * h, color: AppTheme.blue),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              Container(
                height: 48 * h,
                width: MediaQuery.of(context).size.width - 32 * w,
                padding: EdgeInsets.symmetric(horizontal: 4 * w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.blue,
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Select leave type",
                    hintStyle:
                        Utils.style(14, 16, AppTheme.grey, FontWeight.normal),
                    suffixIcon: Icon(Icons.keyboard_arrow_down_sharp,
                        size: 24 * h, color: AppTheme.blue),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              Container(
                height: 48 * h,
                width: MediaQuery.of(context).size.width - 32 * w,
                padding: EdgeInsets.symmetric(horizontal: 4 * w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.blue,
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Select leave from",
                    hintStyle:
                        Utils.style(14, 16, AppTheme.grey, FontWeight.normal),
                    suffixIcon: Icon(CupertinoIcons.calendar,
                        size: 24 * h, color: AppTheme.blue),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              Container(
                height: 48 * h,
                width: MediaQuery.of(context).size.width - 32 * w,
                padding: EdgeInsets.symmetric(horizontal: 4 * w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.blue,
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Select leave to",
                    hintStyle:
                        Utils.style(14, 16, AppTheme.grey, FontWeight.normal),
                    suffixIcon: Icon(CupertinoIcons.calendar,
                        size: 24 * h, color: AppTheme.blue),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16 * h,
          ),
          Container(
            height: 48 * h,
            margin: EdgeInsets.symmetric(horizontal: 16 * w),
            padding: EdgeInsets.symmetric(horizontal: 4 * w),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: AppTheme.blue,
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Days Applied",
                hintStyle:
                    Utils.style(14, 16, AppTheme.grey, FontWeight.normal),
              ),
            ),
          ),
          SizedBox(
            height: 48 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              CustomCheckBox(
                value: shouldCheck,
                shouldShowBorder: true,
                borderColor: Colors.black,
                checkedFillColor: Colors.blue,
                borderRadius: 8,
                borderWidth: 1,
                checkBoxSize: 22,
                onChanged: (val) {
                  //do your stuff here
                  setState(() {
                    shouldCheck = val;
                  });
                },
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => setState(() {
                  shouldCheck = !shouldCheck;
                }),
                child: Container(
                  color: Colors.transparent,
                  child: Text(
                    'HALF DAY LEAVE',
                    textAlign: TextAlign.center,
                    style: Utils.style(22, 26, AppTheme.black, FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 16 * w,
              )
            ],
          ),
        ],
      ),
    );
  }
}
