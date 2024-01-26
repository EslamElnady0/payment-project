import 'package:flutter/material.dart';
import 'package:payment_proj/Features/chechout/presentation/views/thank_you_view.dart';
import 'package:payment_proj/core/widgets/custom_button.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/custom_credit_card.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/payment_methods_listview.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethodsListView()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: CustomButton(
                  text: "Pay",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const ThankYouView()));
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
              )),
        )
      ],
    );
  }
}
