class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerId;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
    required this.customerId,
  });

  Map<String, dynamic> toJson() => {
    'amount': '${amount}00',
    'currency': currency,
    'customer': customerId,
  };

  factory PaymentIntentInputModel.fromJson(Map<String, dynamic> json) =>
      PaymentIntentInputModel(
        amount: json['amount'],
        currency: json['currency'],
        customerId: '',
      );
}

//ephemeral_key stripeversion, id
