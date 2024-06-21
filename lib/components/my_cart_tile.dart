import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/components/my_quantity_selector.dart';
import 'package:restaurant_app/models/cart_item.dart';
import 'package:restaurant_app/models/restaurant.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      //image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          cartItem.food.imagePath,
                          height: 100,
                          width: 100,
                        ),
                      ),

                      const SizedBox(width: 10),
                      //name & price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cartItem.food.name),
                          Text(
                            '${cartItem.food.price}€',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ],
                      ),

                      const Spacer(),

                      //quantity & total price
                      QuantitySelector(
                        quantity: cartItem.quantity,
                        food: cartItem.food,
                        onIncrement: () {
                          restaurant.addToCart(
                              cartItem.food, cartItem.selectedAddons);
                        },
                        onDecrement: () {
                          restaurant.removeFromCart(cartItem);
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                    height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(right: 8.0),
                      children: cartItem.selectedAddons
                          .map(
                            (addon) => FilterChip(
                              label: Row(
                                children: [
                                  // name
                                  Text(addon.name),
                                  // price
                                  Text('${addon.price}€',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ],
                              ),
                              shape: StadiumBorder(
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              onSelected: (value) {},
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                              labelStyle: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 12,
                              ),
                            ),
                          )
                          .toList(),
                    ))
              ],
            )));
  }
}
