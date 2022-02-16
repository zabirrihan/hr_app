import 'package:flutter/material.dart';
import 'package:hr_app/src/theme/app_theme.dart';
import 'package:hr_app/src/utils/utils.dart';

import '../model/leaves_model/balance_model.dart';

class LeaveWidget {
  static Widget balanceWidget(
    BuildContext context,
    BalanceModel data,
  ) {
    double h = Utils.windowHeight(context);
    return ListView.builder(
      itemCount: data.data.length,
      itemBuilder: (context, index) {
        var info = data.data[index];
        return balanceItem(
          context,
          data.data[0].indicator,
          data.data[0].privilegeLeave,
          data.data[0].privilegeLeave,
          data.data[0].privilegeLeave,
          data.data[0].privilegeLeave,
          data.data[0].privilegeLeave,
        );
      },
    );
  }

  static Widget balanceItem(
    BuildContext context,
    String title,
    String beginDay,
    String endDay,
    String privilege,
    String sick,
    String leave,
  ) {
    double h = Utils.windowHeight(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 8 * h,
        ),
        Text(
          title,
          style: Utils.style(
            24 * h,
            28,
            Colors.black,
            FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    beginDay,
                    style: Utils.style(
                      16 * h,
                      22,
                      AppTheme.blue,
                      FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    privilege,
                    style: Utils.style(18 * h, 20,
                        Colors.black.withOpacity(0.3), FontWeight.w300),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    leave,
                    style: Utils.style(18 * h, 20,
                        Colors.black.withOpacity(0.3), FontWeight.w300),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    endDay,
                    style: Utils.style(
                      16 * h,
                      22,
                      AppTheme.blue,
                      FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    sick,
                    style: Utils.style(18 * h, 20,
                        Colors.black.withOpacity(0.3), FontWeight.w300),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    leave,
                    style: Utils.style(18 * h, 20,
                        Colors.black.withOpacity(0.3), FontWeight.w300),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8 * h,
        ),
        Container(
          height: 2,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.withOpacity(0.5),
        )
      ],
    );
  }

  static Widget leavesWidget(
    BuildContext context,
    String title,
    String beginDay,
    String endDay,
    String startDay,
    String day,
    String link,
    String content,
    Color color,
  ) {
    double h = Utils.windowHeight(context);
    return ListView(
      children: [
        SizedBox(
          height: 16 * h,
        ),
        leavesItem(
          context,
          title,
          beginDay,
          endDay,
          startDay,
          day,
          link,
          "Leave reason: Hey Bruce, what's going on? Did you figured it out with the buget? Still",
          Colors.blue,
        ),
        SizedBox(
          height: 8 * h,
        ),
        leavesItem(
          context,
          title,
          beginDay,
          endDay,
          startDay,
          day,
          link,
          "Leave reason: Hey Bruce, what's going on? Did you figured it out with the buget? Still",
          Colors.red,
        ),
        SizedBox(
          height: 8 * h,
        ),
        leavesItem(
          context,
          title,
          beginDay,
          endDay,
          startDay,
          day,
          link,
          "Leave reason: Hey Bruce, what's going on? Did you figured it out with the buget? Still",
          Colors.green,
        ),
        SizedBox(
          height: 8 * h,
        ),
        leavesItem(
          context,
          title,
          beginDay,
          endDay,
          startDay,
          day,
          link,
          "Leave reason: Hey Bruce, what's going on? Did you figured it out with the buget? Still",
          Colors.yellow,
        ),
        SizedBox(
          height: 150 * h,
        ),
      ],
    );
  }

  static Widget leavesItem(
    BuildContext context,
    String title,
    String beginDay,
    String endDay,
    String startDay,
    String day,
    String link,
    String content,
    Color color,
  ) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 8 * w,
        ),
        Container(
          height: 12 * h,
          width: 12 * w,
          margin: EdgeInsets.only(top: 12 * h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12 * h),
            color: color,
          ),
        ),
        SizedBox(
          width: 8 * w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8 * h,
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: Utils.style(
                      18 * h,
                      22,
                      Colors.black,
                      FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    startDay,
                    style: Utils.style(
                      14 * h,
                      18,
                      Colors.black.withOpacity(0.5),
                      FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 8 * w,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 8 * w),
                child: Text(
                  beginDay,
                  maxLines: 2,
                  style: Utils.style(
                    14 * h,
                    18,
                    AppTheme.black.withOpacity(0.5),
                    FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 4 * h,
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 8 * w, vertical: 2 * h),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  link,
                  style: Utils.style(
                    16 * h,
                    24,
                    AppTheme.white,
                    FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 4 * h,
              ),
              Container(
                margin: EdgeInsets.only(right: 8 * w),
                child: Text(
                  content,
                  style: Utils.style(
                    16 * h,
                    18,
                    AppTheme.black.withOpacity(0.7),
                    FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 8 * h,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.5),
              )
            ],
          ),
        ),
      ],
    );
  }
}
