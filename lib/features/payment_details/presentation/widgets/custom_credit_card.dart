import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool showBackView = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          isHolderNameVisible: true,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: autoValidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (value) {
            cardNumber = value.cardNumber;
            expiryDate = value.expiryDate;
            cardHolderName = value.cardHolderName;
            cvvCode = value.cvvCode;
            showBackView = value.isCvvFocused;
            setState(() {});
          },
          formKey: formKey,
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SizedBox(
            height: 73.h,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff34A853),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  setState(() {
                    autoValidateMode = AutovalidateMode.always;
                  });
                }

              },
              child: Text(
                'Pay',
                style: Styles.style24.copyWith(
                  fontSize: 22.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
