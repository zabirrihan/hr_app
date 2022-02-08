import 'package:flutter/material.dart';
import 'package:hr_app/src/theme/app_theme.dart';
import 'package:hr_app/src/utils/utils.dart';

class LeaveWidget {
  static Widget balanceWidget(
    BuildContext context,
    String title,
    String beginDay,
    String endDay,
    String privilege,
    String sick,
    String leave,
  ) {
    double h = Utils.windowHeight(context);
    double w = Utils.windowWidth(context);
    return ListView(
      children: [
        SizedBox(
          height: 16 * h,
        ),
        balanceItem(
          context,
          'Opening Balance 2022',
          "96 Days",
          "56 Days",
          "privilege",
          "sick",
          "leave",
        ),
        balanceItem(
          context,
          'Opening Balance 2022',
          "96 Days",
          "56 Days",
          "privilege",
          "sick",
          "leave",
        ),
        balanceItem(
          context,
          'Opening Balance 2022',
          "96 Days",
          "56 Days",
          "privilege",
          "sick",
          "leave",
        ),
        balanceItem(
          context,
          'Opening Balance 2022',
          "96 Days",
          "56 Days",
          "privilege",
          "sick",
          "leave",
        ),
      ],
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
    double w = Utils.windowWidth(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 8 * h,
        ),
        Text(
          title,
          style: Utils.style(
            28 * h,
            36,
            Colors.black,
            FontWeight.bold,
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
                      20 * h,
                      24,
                      AppTheme.blue,
                      FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    privilege.toUpperCase(),
                    style: Utils.style(20 * h, 20,
                        Colors.black.withOpacity(0.3), FontWeight.normal),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    leave.toUpperCase(),
                    style: Utils.style(20 * h, 20,
                        Colors.black.withOpacity(0.3), FontWeight.normal),
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
                      20 * h,
                      24,
                      AppTheme.blue,
                      FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    sick.toUpperCase(),
                    style: Utils.style(
                      20 * h,
                      20,
                      Colors.black.withOpacity(0.3),
                      FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Text(
                    leave.toUpperCase(),
                    style: Utils.style(20 * h, 20,
                        Colors.black.withOpacity(0.3), FontWeight.normal),
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
          color: Colors.grey,
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
          height: 150,
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
          height: 12,
          width: 12,
          margin: EdgeInsets.only(top: 24 * h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
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
                      20 * h,
                      36,
                      Colors.black,
                      FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    startDay,
                    style: Utils.style(
                      16 * h,
                      36,
                      Colors.black.withOpacity(0.5),
                      FontWeight.bold,
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
                    16 * h,
                    24,
                    AppTheme.black.withOpacity(0.5),
                    FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 8 * h,
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
                    20 * h,
                    24,
                    AppTheme.white,
                    FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 8 * h,
              ),
              Container(
                margin: EdgeInsets.only(right: 8 * w),
                child: Text(
                  content,
                  style: Utils.style(
                    16 * h,
                    24,
                    AppTheme.black.withOpacity(0.7),
                    FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 8 * h,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ],
    );
  }
}
