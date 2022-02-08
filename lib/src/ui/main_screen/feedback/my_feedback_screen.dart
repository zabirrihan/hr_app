import 'package:flutter/material.dart';
import 'package:hr_app/src/theme/app_theme.dart';
import 'package:hr_app/src/utils/utils.dart';

class MyFeedbackScreen extends StatefulWidget {
  const MyFeedbackScreen({Key? key}) : super(key: key);

  @override
  _MyFeedbackScreenState createState() => _MyFeedbackScreenState();
}

class _MyFeedbackScreenState extends State<MyFeedbackScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: const Color(0xFFF5F5F5),
          elevation: 1,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 56 * h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFFF5F5F5),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 8,
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 16 * w,
                        ),
                        const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: AppTheme.blue,
                        ),
                        Text(
                          "Back",
                          style: Utils.style(
                              18 * h, 24, AppTheme.blue, FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "My Feedback",
                  style: Utils.style(22, 26, AppTheme.black, FontWeight.bold),
                ),
                SizedBox(
                  width: 54 * h,
                ),
                const Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: 24 * h,
          ),
          Container(
            margin: EdgeInsets.only(left: 16 * w, right: 48 * w),
            color: Colors.transparent,
            child: Text(
              "Give use your valuable opinion",
              style: Utils.style(28 * h, 36, AppTheme.black, FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 24 * h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 8 * w, vertical: 4 * h),
            margin: EdgeInsets.symmetric(horizontal: 16 * h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: AppTheme.black.withOpacity(0.3),
              ),
            ),
            child: TextFormField(
              controller: _nameController,
              style: Utils.style(16 * h, 20, Colors.black, FontWeight.w400),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Feedback subject",
                hintStyle: Utils.style(
                    16 * h, 20, Colors.black.withOpacity(0.3), FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 24 * h,
          ),
          Container(
            height: 150 * h,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 8 * w, vertical: 4 * h),
            margin: EdgeInsets.symmetric(horizontal: 16 * h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8 * h),
              border: Border.all(
                width: 1,
                color: AppTheme.black.withOpacity(0.3),
              ),
            ),
            child: TextFormField(
              controller: _titleController,
              style: Utils.style(16 * h, 20, Colors.black, FontWeight.w400),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Type here deatils",
                hintStyle: Utils.style(
                    16 * h, 20, Colors.black.withOpacity(0.3), FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 24 * h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 48 * h,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 32 * w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8 * h),
                color: AppTheme.blue,
              ),
              child: Center(
                child: Text(
                  "SUBMIT",
                  style:
                      Utils.style(20 * h, 24, AppTheme.white, FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
