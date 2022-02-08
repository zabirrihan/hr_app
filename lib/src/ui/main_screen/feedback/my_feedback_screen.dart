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
          backgroundColor: Color(0xFFF5F5F5),
          elevation: 0,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 56,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFF5F5F5),
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
                        const SizedBox(
                          width: 16,
                        ),
                        const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: AppTheme.blue,
                        ),
                        Text(
                          "Back",
                          style: Utils.style(
                              18, 24, AppTheme.blue, FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "My Feedback",
                  style: Utils.style(22, 26, AppTheme.black, FontWeight.bold),
                ),
                SizedBox(
                  width: 54,
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 48),
            color: Colors.transparent,
            child: Text(
              "Give use your valuable opinion",
              style: Utils.style(32, 36, AppTheme.black, FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 8 * w, vertical: 4 * h),
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 2,
                color: AppTheme.black.withOpacity(0.3),
              ),
            ),
            child: TextFormField(
              controller: _nameController,
              style: Utils.style(16, 20, Colors.black, FontWeight.normal),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Feedback subject",
                hintStyle: Utils.style(
                    16, 20, Colors.black.withOpacity(0.3), FontWeight.normal),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 8 * w, vertical: 4 * h),
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 2,
                color: AppTheme.black.withOpacity(0.3),
              ),
            ),
            child: TextFormField(
              controller: _titleController,
              style: Utils.style(16, 20, Colors.black, FontWeight.normal),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Type here deatils",
                hintStyle: Utils.style(
                    16, 20, Colors.black.withOpacity(0.3), FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 32 * w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppTheme.blue,
              ),
              child: Center(
                child: Text(
                  "SUBMIT",
                  style: Utils.style(20, 24, AppTheme.white, FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
