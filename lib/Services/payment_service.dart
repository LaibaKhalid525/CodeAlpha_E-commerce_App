import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentService {
  Future<void> initStripe(String publishableKey) async {
    Stripe.publishableKey = publishableKey;
    await Stripe.instance.applySettings();
  }

  Future<void> makePayment({required int amount, required String currency}) async {
    // You must handle PaymentIntent from your backend here.
    // This is a placeholder.
  }
}
