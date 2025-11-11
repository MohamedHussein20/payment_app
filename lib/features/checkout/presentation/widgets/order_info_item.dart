import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Styles.style18),
          Text("\$$price", style: Styles.style18),
        ],
      ),
    );
  }
}
