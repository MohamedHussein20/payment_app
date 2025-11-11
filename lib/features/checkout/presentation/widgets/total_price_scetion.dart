import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Total", style: Styles.style24),
        Text("\$50.97", style: Styles.style24),
      ],
    );
  }
}
