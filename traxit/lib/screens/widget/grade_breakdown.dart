import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/screens/widget/slider.dart';
// import 'package:traxit/widgets/rounded_linear_progress.dart';

class StudentResultCard extends StatelessWidget {
  final String name;
  final int average;   
  final int points;    
  final String grade;  
  final double progress; 
  final VoidCallback onTap;

  const StudentResultCard({
    super.key,
    required this.name,
    required this.average,
    required this.points,
    required this.grade,
    required this.progress,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: Space.all(10),
        decoration: BoxDecoration(
          color: AppTheme.c.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Top Row
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    'assets/pngs/OB_1.png', 
                    width: 50.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                ),

                Space.xf(12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: AppText.b1bm?.w(6),
                      ),

                      Space.yf(4),

                      Text(
                        'Avg $average%',
                        style: AppText.b2?.w(4)
                            .cl(AppTheme.c.text.main!),
                      ),
                    ],
                  ),
                ),
                          //grade
                Text(
                  grade,
                  style: AppText.h3b?.w(6)
                      .cl(AppTheme.c.primary.main!),
                ),
              ],
            ),

            Space.yf(10),

            /// Points Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Points earned',
                  style: AppText.b2bm,
                     
                ),
                Text(
                  '$points/100',
                  style: AppText.b2bm,
                ),
              ],
            ),

            Space.yf(6),

            ///  Custom Slider
            RoundedLinearProgress(
              value: progress,
              height: 8.h,
              backgroundColor: AppTheme.c.lightGrey.shade100!,
              valueColor: AppTheme.c.primary.shade600!,
              hasBorder: false,
            ),
          ],
        ),
      ),
    );
  }
}
