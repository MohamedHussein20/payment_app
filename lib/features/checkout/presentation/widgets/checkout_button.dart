import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 73.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          backgroundColor: const Color(0xff34A853),
        ),
        child: Text(
          "Complete Payment",
          style: Styles.style24.copyWith(fontSize: 22.sp),
        ),
      ),
    );
  }
}
