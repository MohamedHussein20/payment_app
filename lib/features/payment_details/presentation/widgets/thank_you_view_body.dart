import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2 + 20.h,
              left: 36.w,
              right: 36.w,
              child: Row(
                children: List.generate(30, (index) {
                  return Expanded(
                    child: Container(
                      height: 4.h,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  );
                }),
              ),
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
              child: CircleAvatar(
                radius: 50.r,
                backgroundColor: const Color(0xffd9d9d9),
                child: CircleAvatar(
                  radius: 40.r,
                  backgroundColor: const Color(0xff34A853),
                  child: Icon(
                    Icons.check,
                    color: const Color(0xffffffff),
                    size: 50.r,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
