class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
  });

  Map<String, dynamic> toJson() => {
    'amount': amount,
    'currency': currency,
  };

  factory PaymentIntentInputModel.fromJson(Map<String, dynamic> json) =>
      PaymentIntentInputModel(
        amount: json['amount'],
        currency: json['currency'],
      );
}
