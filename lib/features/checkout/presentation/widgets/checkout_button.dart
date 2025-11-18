import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment_app/features/checkout/repos/checkout_repo_impl.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 73.h,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
            ),
            context: context,
            builder: (context) {
              return BlocProvider(
                create: (context) => PaymentCubit(CheckoutRepoImpl()),
                child: const PaymentMethodsBottomSheet(),
              );
            },
          );
        },
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
