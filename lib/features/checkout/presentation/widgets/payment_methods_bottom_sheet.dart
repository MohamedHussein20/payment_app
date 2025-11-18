import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_buttom_bloc_consumer.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.h),
          const PaymentMethodsListView(),
          SizedBox(height: 24.h),
          const CustomButtomBlocConsumer(),
        ],
      ),
    );
  }
}

