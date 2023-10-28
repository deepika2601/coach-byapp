import 'package:alpersonalcoachingapp/utils/appColors.dart';
import 'package:alpersonalcoachingapp/api/apphelper.dart';
import 'package:alpersonalcoachingapp/utils/appstyle.dart';
import 'package:alpersonalcoachingapp/view/screen/dashboard/homedashboard/components/wheelmeasurment.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BodysDetailsScreenACtivity extends StatelessWidget {
  final String title;
  final double value;
  final icon;

  const BodysDetailsScreenACtivity({
    super.key,
    required this.title,
    required this.value,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w,
      height: 44.w,
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(3.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(icon,
                    height: 3.h, width: 3.h, color: AppColors.primarycolor),
                Spacer(),
                Text(
                  title,
                  style: AppHelper.themelight
                      ? AppStyle.cardtitledark
                      : AppStyle.cardtitle,
                )
              ],
            ),
            WeekLyDetailsmeasurmentScreenActivity(
              title: "2265 cm",
              title2: "Steps",
            ),

            // LinearProgressIndicator(
            //   backgroundColor: Colors.cyanAccent,
            //   valueColor: AlwaysStoppedAnimation<Color>(AppColors.primarycolor),
            //   value: value,
            // ),
          ],
        ),
      ),
    );
  }
}
