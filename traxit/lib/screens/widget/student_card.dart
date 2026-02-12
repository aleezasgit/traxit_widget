import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/screens/widget/arrow.dart';

class StudentCard extends StatelessWidget {
  final String name;
  final String completionTime;
  final VoidCallback onTap;

  const StudentCard({
    super.key,
    required this.name,
    required this.completionTime,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: Space.hf(8.w).add(Space.vf(12.h),),//.all(v,h)
        
        decoration: BoxDecoration(
          color: AppTheme.c.white,
          borderRadius: BorderRadius.circular(16.r),
       
        ),
        child: Row(
          children: [
            /// Profile Image 
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                'assets/pngs/OB_1.png',
                width: 50.w,
                height: 50.h,
                fit: BoxFit.cover,
              ),
            ),

            Space.xf(12.w),

            /// Name + Time
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppText.b1bm?.w(6),
                  ),

                  Space.yf(2),

                  Text(
                    completionTime,
                    style:
                        AppText.b2?.w(4).cl(AppTheme.c.text.main!),
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
