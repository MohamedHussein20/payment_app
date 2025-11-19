import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
    PaymentIntentInputModel paymentIntentInputModel,
  ) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      contentType: Headers.formUrlEncodedContentType,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({
    required String paymentIntentClientSecret,
    required String ephemeralKeySecret,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        customerEphemeralKeySecret: ephemeralKeySecret,
        customerId: 'cus_TS8exQqtY0804P',
        merchantDisplayName: 'Mohamed Hussein',
      ),
    );
  }

  Future<void> presentPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey({
    required String customerId,
  }) async {
    var response = await apiService.post(
      body: {'customer': customerId},
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      contentType: Headers.formUrlEncodedContentType,
      headers: {
        'Authorization': 'Bearer ${ApiKeys.secretKey}',
        'Stripe-Version': '2022-08-01',
      },
    );
    var ephemeralKeyModel = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyModel;
  }

  Future makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(
      customerId: 'cus_TS8exQqtY0804P',
    );
    await initPaymentSheet(
      ephemeralKeySecret: ephemeralKeyModel.secret!,
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
    );
    await presentPaymentSheet();
  }
}
