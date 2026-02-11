import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/configs/configs.dart';

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
                    children: [
                      Image.asset(
                        'assets/pngs/44 calendar.png',
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
                      Image.asset(
                        'assets/pngs/clock-02.png',
                        width: 20.w,
                        height: 20.h,
                      ),
                      Space.xf(1.w),
                      Text(
                        duration,
                        style: AppText.b2?.w(4).cl(AppTheme.c.text.main!),

                      ),
      
                      Space.xf(20),
      
                      Image.asset(
                        'assets/pngs/users-03.png',
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
      
            /// Arrow Button
            Container(
              padding: Space.all(7.2.w),

            //  padding: EdgeInsets.only(top: 24.h,bottom: 24.h,left: 80.w,right: 0.w),
              // height: 32.h,
              // width: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.c.primary.shade100,
              ),
              child: Center(
                child: Image.asset(
                  'assets/pngs/arrow-narrow-right.png',
                  width: 18.w,
                  height: 18.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
