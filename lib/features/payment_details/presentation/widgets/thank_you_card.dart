import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/payment_info_item.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffd9d9d9),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Text(
              "Thank You!",
              style: Styles.style24,
            ),
            SizedBox(height: 8.h),
            Text(
              "Your Transaction was successful",
              style: Styles.style18.copyWith(
                color: Colors.grey.shade800,
              ),
            ),
            SizedBox(height: 30.h),
            const PaymentInfoItem(title: "Date", value: "01/24/2025"),
            SizedBox(height: 20.h),
            const PaymentInfoItem(title: "Time", value: "10:25 AM"),
            SizedBox(height: 20.h),
            const PaymentInfoItem(title: "To", value: "Paris"),
          ],
        ),
      ),
    );
  }
}

