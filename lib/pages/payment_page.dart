import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/components/my_button.dart';
import 'package:restaurant_app/models/restaurant.dart';
import 'package:restaurant_app/pages/home_page.dart';
import 'package:restaurant_app/services/database/firestore.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // pay method
  void userTappedPay() async {
    if (formKey.currentState!.validate()) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                  title: const Text("Confirmer le paiement"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text("Card Number: $cardNumber"),
                        Text("Expiry Date: $expiryDate"),
                        Text("Card Holder Name: $cardHolderName"),
                        Text("CVV: $cvvCode")
                      ],
                    ),
                  ),
                  actions: [
                    // cancel button
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Annuler")),

                    // approve button
                    TextButton(
                        onPressed: () async {
                          Navigator.pop(context);

                          // Save order to Firestore
                          final firestoreService = FirestoreService();
                          await firestoreService
                              .saveOrderToDatabase(DateTime.now());

                          // Clear cart (if needed)
                          final restaurant =
                              Provider.of<Restaurant>(context, listen: false);
                          restaurant.clearCart();

                          // Navigate to HomePage
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text("Valider"))
                  ]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Paiement'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // credit card
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
            isChipVisible: false,
          ),

          // credit card form
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey),

          const Spacer(),

          // pay button
          MyButton(onTap: userTappedPay, text: "Payer"),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
