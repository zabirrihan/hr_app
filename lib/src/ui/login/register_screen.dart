import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hr_app/src/ui/main_screen/main_screen.dart';
import 'package:hr_app/src/utils/utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool passCheck = false;

  @override
  Widget build(BuildContext context) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 72,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24 * h),
                bottomRight: Radius.circular(24 * h),
              ),
            ),
          ),
          SizedBox(
            height: 115,
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Text(
              "LOGIN",
              style: Utils.style(32, 36, Colors.blue, FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 100 * h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 0 * w, vertical: 4 * h),
            margin: EdgeInsets.symmetric(horizontal: 16 * w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Colors.blue,
              ),
            ),
            child: TextFormField(
              controller: _idController,
              style: Utils.style(16, 20, Colors.black, FontWeight.normal),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Id....",
                hintStyle: Utils.style(
                    16, 20, Colors.black.withOpacity(0.3), FontWeight.normal),
                prefixIcon: Icon(
                  Icons.perm_identity,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16 * h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 0 * w, vertical: 4 * h),
            margin: EdgeInsets.symmetric(horizontal: 16 * w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Colors.blue,
              ),
            ),
            child: TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              style: Utils.style(16, 20, Colors.black, FontWeight.normal),
              enableInteractiveSelection: passCheck,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: Utils.style(
                    16, 20, Colors.black.withOpacity(0.3), FontWeight.normal),
                prefixIcon: const Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.blue,
                ),
                suffixIcon: GestureDetector(
                  onTap: () => setState(() {
                    passCheck = !passCheck;
                  }),
                  child: Container(
                    height: 24 * h,
                    width: 24 * w,
                    color: Colors.transparent,
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: passCheck ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 72 * h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 0 * w, vertical: 8 * h),
              margin: EdgeInsets.symmetric(horizontal: 16 * w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: Utils.style(28, 32, Colors.white, FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 56 * h,
          ),
        ],
      ),
    );
  }
}
