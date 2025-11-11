import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 103.w,
          height: 62.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
              side: BorderSide(
                color: const Color(0xff34A853),
                width: 2.w,
              ),
            ),
            shadows: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10.r,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: SvgPicture.asset(
              "assets/images/visa.svg",
              height: 24.h,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
  }
}
