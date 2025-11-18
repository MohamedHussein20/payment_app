import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.isLoading = false,
  });
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73.h,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          backgroundColor: const Color(0xff34A853),
        ),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Text(
                text,
                style: Styles.style24.copyWith(fontSize: 22.sp),
              ),
      ),
    );
  }
}
