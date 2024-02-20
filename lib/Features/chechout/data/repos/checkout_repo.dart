import 'package:dartz/dartz.dart';
import 'package:payment_proj/Features/chechout/data/models/input_models/payment_intent_input_model.dart';
import 'package:payment_proj/core/errors/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
