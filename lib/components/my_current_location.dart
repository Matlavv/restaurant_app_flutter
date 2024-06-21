import "package:flutter/material.dart";

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                title: const Text("Votre adresse de livraison"),
                content: const TextField(
                  decoration: InputDecoration(
                    hintText: "Entrez votre adresse",
                  ),
                ),
                actions: [
                  MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Annuler'),
                  ),
                  MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Valider'),
                  )
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(children: [
        Text("Livrer maintenant",
            style: TextStyle(color: Theme.of(context).colorScheme.primary)),
        GestureDetector(
          onTap: () => openLocationSearchBox(context),
          child: Row(
            children: [
              Text("123 rue de la paix",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold)),
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ),
      ]),
    );
  }
}
