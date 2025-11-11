import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
          side: BorderSide(
            color: isSelected
                ? const Color(0xff34A853)
                : const Color(0xff000000),
            width: 2.w,
          ),
        ),
        shadows: [
          BoxShadow(
            color: isSelected ? const Color(0xff34A853) : Colors.grey,
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
    );
  }
}
