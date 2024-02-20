import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_proj/Features/chechout/data/models/customer_model/customer_model.dart';
import 'package:payment_proj/Features/chechout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payment_proj/Features/chechout/data/models/input_models/customer_input_model.dart';
import 'package:payment_proj/Features/chechout/data/models/input_models/init_payment_sheet_input_model.dart';
import 'package:payment_proj/Features/chechout/data/models/input_models/payment_intent_input_model.dart';
import 'package:payment_proj/Features/chechout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:payment_proj/core/utils/api_keys.dart';
import 'package:payment_proj/core/utils/api_service.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var response = await apiService.post(
        url: "https://api.stripe.com/v1/payment_intents",
        token: ApiKeys.secretKey,
        body: paymentIntentInputModel.toJson());

    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  // Future<CustomerModel> createCustomer(
  //     {required CustomerInputModel customerInputModel}) async {
  //   var response = await apiService.post(
  //       url: "https://api.stripe.com/v1/customers",
  //       token: ApiKeys.secretKey,
  //       body: customerInputModel.toJson());

  //   CustomerModel customerModel = CustomerModel.fromJson(response.data);
  //   return customerModel;
  // }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
        url: "https://api.stripe.com/v1/ephemeral_keys",
        token: ApiKeys.secretKey,
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretKey}",
          "Stripe-Version": "2023-10-16"
        },
        body: {
          "customer": customerId
        });

    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }

  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret:
          initPaymentSheetInputModel.paymentIntentClientSecret,
      customerEphemeralKeySecret:
          initPaymentSheetInputModel.customerEphemeralKeySecret,
      customerId: initPaymentSheetInputModel.customerId,
      merchantDisplayName: "7moksha",
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(
        paymentIntentInputModel: paymentIntentInputModel);
    var ephemeralKeyModel =
        await createEphemeralKey(customerId: paymentIntentModel.customer);
    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!,
        customerEphemeralKeySecret: ephemeralKeyModel.secret!,
        customerId: paymentIntentModel.customer);
    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }
}
