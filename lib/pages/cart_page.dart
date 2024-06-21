import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/components/my_button.dart';
import 'package:restaurant_app/components/my_cart_tile.dart';
import 'package:restaurant_app/models/restaurant.dart';
import 'package:restaurant_app/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;

      return Scaffold(
          appBar: AppBar(
            title: const Text('Panier'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text(
                                "Etes vous sur de vouloir vider votre panier ?"),
                            actions: [
                              // cancel button
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Annuler"),
                              ),
                              // yes button
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  restaurant.clearCart();
                                },
                                child: const Text("Oui"),
                              ),
                            ],
                          ));
                },
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child:
                                Center(child: Text("Votre panier est vide !")))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];

                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),

              //pay button
              MyButton(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentPage())),
                  text: "Payer"),

              const SizedBox(height: 25),
            ],
          ));
    });
  }
}
