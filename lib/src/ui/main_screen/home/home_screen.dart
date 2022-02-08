import 'package:flutter/material.dart';
import 'package:hr_app/src/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        'assets/images/defoult_img.png',
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      children: [
                        Text(
                          'Monarh Madaminov',
                          style: Utils.style(
                              22, 26, Colors.white, FontWeight.bold),
                        ),
                        Text(
                          'Developer in Flutter',
                          style: Utils.style(
                              18, 22, Colors.white, FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          margin: EdgeInsets.only(left: 48),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset(
                              'assets/images/defoult_img.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          margin: EdgeInsets.only(left: 24),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset(
                              'assets/images/defoult_img.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          margin: EdgeInsets.only(left: 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset(
                              'assets/images/defoult_img.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '6466 Collega in Brain',
                      style:
                          Utils.style(16, 20, Colors.white, FontWeight.normal),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
