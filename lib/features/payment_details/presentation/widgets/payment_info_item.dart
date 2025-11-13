import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';

class PaymentInfoItem extends StatelessWidget {
  const PaymentInfoItem({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Text(title, style: Styles.style18),
          const Spacer(),
          Text(value, style: Styles.style18),
        ],
      ),
    );
  }
}
