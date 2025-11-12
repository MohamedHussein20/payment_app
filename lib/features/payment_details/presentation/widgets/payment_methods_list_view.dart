import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});
  final List<String> paymentMethods = const [
    'assets/images/card1.svg',
    'assets/images/card2.svg',
    'assets/images/card3.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethods.length,
        itemBuilder: (context, index) {
          return PaymentMethodItem(
            isSelected: index == 0,
            image: paymentMethods[index],
          );
        },
      ),
    );
  }
}