import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/configs/configs.dart';

class Arrow extends StatelessWidget {
  const Arrow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

              height: 32.h,
              width: 32.w,
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
            );
  }
}