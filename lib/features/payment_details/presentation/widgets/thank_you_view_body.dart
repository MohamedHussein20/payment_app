import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/custom_check_avatar.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/custom_dots_row.dart';
import 'package:payment_app/features/payment_details/presentation/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(
          30.w,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2 + 20.h,
              left: 36.w,
              right: 36.w,
              child: const CustomDotsRow(),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              left: -12.w,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              right: -12.w,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: -40.h,
              child: const CustomCheckAvatar(),
            ),
          ],
        ),
      ),
    );
  }
}
