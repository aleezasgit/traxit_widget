import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/screens/widget/arrow.dart';

class ShortLapCard extends StatelessWidget {
  final String date;
  final String title;
  final String duration;
  final String students;
  final VoidCallback ontap;

  const ShortLapCard({
    super.key,
    required this.date,
    required this.title,
    required this.duration,
    required this.students,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        padding: Space.all(18.w),
        
        decoration: BoxDecoration(
          color: AppTheme.c.white,
          borderRadius: BorderRadius.circular(16.r),
            border: Border.all(width: 1.w,color: AppTheme.c.lightGrey.main!)
         // boxShadow: UIProps.cardShadow,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// LEFT CONTENT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  /// Date Row
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/44 calendar.svg',//svg
                        width: 20.w,
                        height: 20.h,
                      ),
                      Space.xf(1.w),
                      Text(
                        date,
                        style: AppText.b2bm,
                            
                      ),
                    ],
                  ),
      
                  Space.yf(12.h),
      
                  /// Title
                  Text(
                    title,
                    style: AppText.h5bm,
                  ),
      
                  Space.yf(8.h),
      
                  /// Duration + Students
                  Row(
                    children: [
                     SvgPicture.asset(
                        'assets/svgs/clock-02.svg',
                        width: 20.w,
                        height: 20.h,
                      ),
                      Space.xf(1.w),
                      Text(
                        duration,
                        style: AppText.b2?.w(4).cl(AppTheme.c.text.main!),

                      ),
      
                      Space.xf(20),
      
                     SvgPicture.asset(
                        'assets/svgs/users-03.svg',
                        width: 18.w,
                        height: 18.h,
                      ),
                      Space.xf(6),
                      Text(
                        students,
                        style: AppText.l2?.w(4).cl(AppTheme.c.text.main!),

                            
                      ),
                    ],
                  ),
                ],
              ),
            ),
 

            Arrow(),
          ],
        ),
      ),
    );
  }
}
