import 'package:dartz/dartz.dart';
import 'package:payment_proj/Features/chechout/data/models/input_models/payment_intent_input_model.dart';
import 'package:payment_proj/Features/chechout/data/repos/checkout_repo.dart';
import 'package:payment_proj/core/errors/failure.dart';
import 'package:payment_proj/core/utils/stripe_service.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServiceFailure(errMessage: e.toString()));
    }
  }
}
