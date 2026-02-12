import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/configs/configs.dart';

class Penalty extends StatelessWidget {
  final String name;
  final String completionTime;
  final String? overtime;        
  final String showPenalty;        


  const Penalty({
    super.key,
    required this.name,
    required this.completionTime,
    required this.showPenalty,
   
    required this.overtime,
   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(8.w),
      
      
      decoration: BoxDecoration(
        color: AppTheme.c.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
    
          Space.xf(12),
    
          /// Name + Time + Overtime
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
                  style: AppText.b2?.w(4)
                      .cl(AppTheme.c.text.main!),
                ),
    
                
               
                  Space.yf(2),
                  Text(
                    overtime!,
                    style: AppText.b2bm?.cl(AppTheme.c.error.main!),
                  ),
               
              ],
            ),
          ),
    
          /// Penalty 
         
            Container(
              padding: Space.hf(8.w).add(Space.vf(4.h)//.all jira
              ),
              decoration: BoxDecoration(
                color: AppTheme.c.error.shade100,
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Text(
                "Penalty",
                style: AppText.l2
                    ?.cl(AppTheme.c.error.main!),
              ),
            ),
        ],
      ),
    );
  }
}
