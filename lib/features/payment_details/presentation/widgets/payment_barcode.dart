import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/styles.dart';

class PaymentBarcode extends StatelessWidget {
  const PaymentBarcode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(FontAwesomeIcons.barcode),
          const Spacer(),
          Container(
            width: 113.w,
            height: 58.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: const Color(0xff34a853),
                  width: 2.h,
                ),
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            child: Center(
              child: Text(
                "PAID",
                style: Styles.style18.copyWith(
                  color: const Color(0xff34a853),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
