import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/master_card_container.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/payment_barcode.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/payment_info_item.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      decoration: BoxDecoration(
        color: const Color(0xffd9d9d9),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Text("Thank You!", style: Styles.style24),
          SizedBox(height: 8.h),
          Text(
            "Your Transaction was successful",
            style: Styles.style18.copyWith(
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(height: 30.h),

          /// Payment Info
          const PaymentInfoItem(title: "Date", value: "01/24/2025"),
          SizedBox(height: 20.h),
          const PaymentInfoItem(title: "Time", value: "10:25 AM"),
          SizedBox(height: 20.h),
          const PaymentInfoItem(title: "To", value: "Paris"),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Divider(
              height: 40.h,
              thickness: 2.h,
              color: Colors.grey.shade400,
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text("Total", style: Styles.style20),
                const Spacer(),
                Text("\$250", style: Styles.style20),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          const MasterCardContainer(),
          SizedBox(height: 150.h),
          const PaymentBarcode(),
        ],
      ),
    );
  }
}
