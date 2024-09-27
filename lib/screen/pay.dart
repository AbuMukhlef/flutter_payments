import 'package:flutter/material.dart';
import 'package:moyasar/moyasar.dart';

class PaymentMethods extends StatelessWidget {
  PaymentMethods({super.key});

  final paymentConfig = PaymentConfig(
    publishableApiKey: 'pk_test_tL7HBWubu85rbQZqksgqYkbNH1XVLLtPr5BGVA2H',
    amount: 25758, // SAR 257.58
    description: 'order #1324',
    metadata: {'size': '250g'},
    creditCard: CreditCardConfig(saveCard: true, manual: false),
    applePay: ApplePayConfig(
        merchantId: 'merchant.moyasarflutter.onzecafe',
        label: 'ABU_Mukhlef',
        manual: false),
  );

  void onPaymentResult(result) {
    if (result is PaymentResponse) {
      switch (result.status) {
        case PaymentStatus.paid:
          // handle success.
          break;
        case PaymentStatus.failed:
          // handle failure.
          break;
        case PaymentStatus.initiated:
        // TODO: Handle this case.
        case PaymentStatus.authorized:
        // TODO: Handle this case.
        case PaymentStatus.captured:
        // TODO: Handle this case.
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ApplePay(
          config: paymentConfig,
          onPaymentResult: onPaymentResult,
        ),
        const Text("or"),
        CreditCard(
          config: paymentConfig,
          onPaymentResult: onPaymentResult,
        )
      ],
    );
  }
}
