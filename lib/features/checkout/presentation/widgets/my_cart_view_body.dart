import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/features/checkout/presentation/widgets/checkout_button.dart';
import 'package:payment_app/features/checkout/presentation/widgets/order_info_item.dart';
import 'package:payment_app/features/checkout/presentation/widgets/total_price_scetion.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 18.h),
              Image.asset(
                "assets/images/basket_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 25.h),
              const OrderInfoItem(
                title: "Order Subtotal",
                price: "42.97",
              ),
              const OrderInfoItem(
                title: "Discount",
                price: "0",
              ),
              const OrderInfoItem(
                title: "Shipping",
                price: "8",
              ),
              SizedBox(height: 10.h),
              Divider(
                thickness: 2.h,
                color: Colors.grey,
              ),
              SizedBox(height: 10.h),
              const TotalPriceSection(),
              SizedBox(height: 15.h),
              const CheckoutButton(),
              SizedBox(height: 45.h),
            ],
          ),
        ),
      ),
    );
  }
}
