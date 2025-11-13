import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckAvatar extends StatelessWidget {
  const CustomCheckAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.r,
      backgroundColor: const Color(0xffd9d9d9),
      child: CircleAvatar(
        radius: 40.r,
        backgroundColor: const Color(0xff34A853),
        child: Icon(
          Icons.check,
          color: const Color(0xffffffff),
          size: 50.r,
        ),
      ),
    );
  }
}
