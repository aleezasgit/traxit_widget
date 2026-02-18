import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/configs/configs.dart';

class PolicySection extends StatelessWidget {
  final String title;
  final String description;

  const PolicySection({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppText.b1bm?.w(6),
        ),
        Space.yf(6),
        Container(
          padding: Space.all(12),
          decoration: BoxDecoration(
            color: AppTheme.c.white!,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: AppTheme.c.lightGrey.main!,
              width: 1.w,
            ),
          ),
          child: Text(
            description,
            style: AppText.b1?.w(4).cl(AppTheme.c.text.main!),
          ),
        ),
      ],
    );
  }
}
