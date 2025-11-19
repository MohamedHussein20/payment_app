import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'features/checkout/presentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey =
      'pk_test_51ST8xpGPvEY0pkUbYYymiWHCU4bKkrnHCBg0sVGAlP3G3If7XOKATfDu6HjW5D6ONTX409Sgc4uxnHhMtljcqHwy00w9xl8n8i';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(390, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyCartView(),
      ),
    );
  }
}
