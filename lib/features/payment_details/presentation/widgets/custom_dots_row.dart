import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDotsRow extends StatelessWidget {
  const CustomDotsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(30, (index) {
        return Expanded(
          child: Container(
            height: 4.h,
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
        );
      }),
    );
  }
}
