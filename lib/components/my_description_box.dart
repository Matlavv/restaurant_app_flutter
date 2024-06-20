import "package:flutter/material.dart";

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Frais de livraison', style: myPrimaryTextStyle),
                Text(
                  '1.99€',
                  style: mySecondaryTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text('Temps de livraison', style: myPrimaryTextStyle),
                Text(
                  '15 - 30 min',
                  style: mySecondaryTextStyle,
                ),
              ],
            )
          ],
        ));
  }
}
