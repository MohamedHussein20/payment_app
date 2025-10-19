import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "My Cart",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 8.h,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
