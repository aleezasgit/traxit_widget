import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traxit/configs/configs.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final String duration;

  const CourseCard({
    super.key,
    required this.title,
    required this.description,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(8.w),
      decoration: BoxDecoration(
        color: AppTheme.c.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w,color: AppTheme.c.lightGrey.main!)
      ),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Top Icon Box
          Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.w,color: AppTheme.c.lightGrey.main!),
                  borderRadius: BorderRadius.all(Radius.circular(16.r)),
              color: AppTheme.c.background.shade200,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/svgs/Attachment Icon.svg',
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),

          Space.yf(20.h),
          Row(
            

          /// Title
          children: [ Expanded(
            child: Text(
              title,
              style: AppText.b1bm?.w(6),
            ),
          ),

          Space.xf(79.w),
          
           SvgPicture.asset(
             'assets/svgs/clock-02.svg',
             width: 18.w,
             height: 18.h,
           ),
           Space.xf(10.w),
           Text(
             duration,
             style: AppText.b2?.w(4).cl(AppTheme.c.text.main!),
           ),
          ]
          ),

          Space.yf(5.h),

          /// Description
          Text(
            description,
            style: AppText.b2?.w(4).cl(AppTheme.c.text.main!),
          ),

          Space.yf(12),


          /// Bottom Stats Container
          Container(
           padding: Space.all(30.5,8), 
     
            decoration: BoxDecoration(
              color: AppTheme.c.background.main,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(width: 1,color: AppTheme.c.lightGrey.main!),
            ),
            child: Row(
        
              children: [

                /// Item 1
                Expanded(
                  child: _StatItem(
                    value: "52 m",
                    title: "Distance",
                  ),
                ),
                Space.xf(32),

                _VerticalDivider(),
                Space.xf(32),

                /// Item 2
                Expanded(
                  child: _StatItem(
                    value: "10",
                    title: "Points",
                  ),
                ),
                Space.xf(32),

                _VerticalDivider(),
                Space.xf(32),

                /// Item 3
                Expanded(
                  child: _StatItem(
                    value: "10",
                    title: "Laps",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class _StatItem extends StatelessWidget {
  final String value;
  final String title;

  const _StatItem({
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: Space.all(8.w,30.h),
      child: Column(
  
       
        children: [
         
          Text(
            value,
            style: AppText.b2b?.w(7),
          ),
        
          Text(
            title,
            style: AppText.l2bm?.w(4).cl(AppTheme.c.text.main!),
          ),
        ],
      ),
    );
  }
}


class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      width: 1.w,
      color: AppTheme.c.text.shade100,
    );
  }
}
