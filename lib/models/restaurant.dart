import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic cheeseburger",
        description: "Delicieux",
        imagePath: "lib/images/burgers/burger_1.png",
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "BBQ cheeseburger",
        description: "Delicieux",
        imagePath: "lib/images/burgers/burger_2.png",
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Bacon cheeseburger",
        description: "Delicieux",
        imagePath: "lib/images/burgers/burger_3.png",
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Double cheeseburger",
        description: "Delicieux",
        imagePath: "lib/images/burgers/burger_4.png",
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Triple cheeseburger",
        description: "Delicieux",
        imagePath: "lib/images/burgers/burger_5.png",
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    //salads
    Food(
        name: "Salade César",
        description: "Delicieux",
        imagePath: "lib/images/salads/salad_1.png",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Salade verte",
        description: "Delicieux",
        imagePath: "lib/images/salads/salad_2.png",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Salade simple",
        description: "Delicieux",
        imagePath: "lib/images/salads/salad_3.png",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Salade complète",
        description: "Delicieux",
        imagePath: "lib/images/salads/salad_4.png",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Salade du chef",
        description: "Delicieux",
        imagePath: "lib/images/salads/salad_5.png",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    //sides
    Food(
        name: "Frites",
        description: "Delicieux",
        imagePath: "lib/images/sides/side_1.png",
        price: 5.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Patates",
        description: "Delicieux",
        imagePath: "lib/images/sides/side_2.png",
        price: 5.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Potatoes",
        description: "Delicieux",
        imagePath: "lib/images/sides/side_3.png",
        price: 5.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Frites au bacon",
        description: "Delicieux",
        imagePath: "lib/images/sides/side_4.png",
        price: 5.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Frites au fromage",
        description: "Delicieux",
        imagePath: "lib/images/sides/side_5.png",
        price: 5.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    //desserts
    Food(
        name: "Fruits",
        description: "Delicieux",
        imagePath: "lib/images/desserts/dessert_1.png",
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Cheescake",
        description: "Delicieux",
        imagePath: "lib/images/desserts/dessert_2.png",
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Tarte aux pommes",
        description: "Delicieux",
        imagePath: "lib/images/desserts/dessert_3.png",
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Mousse au chocolat",
        description: "Delicieux",
        imagePath: "lib/images/desserts/dessert_4.png",
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Chutney de fruits",
        description: "Delicieux",
        imagePath: "lib/images/desserts/dessert_5.png",
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    //drinks
    Food(
        name: "Oasis",
        description: "Delicieux",
        imagePath: "lib/images/drinks/drinks_1.png",
        price: 5.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Fanta",
        description: "Delicieux",
        imagePath: "lib/images/drinks/drinks_2.png",
        price: 5.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Ice Tea",
        description: "Delicieux",
        imagePath: "lib/images/drinks/drinks_3.png",
        price: 5.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Cola",
        description: "Delicieux",
        imagePath: "lib/images/drinks/drinks_4.png",
        price: 5.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
    Food(
        name: "Sprite",
        description: "Delicieux",
        imagePath: "lib/images/drinks/drinks_5.png",
        price: 5.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Extra patty", price: 1.99),
          Addon(name: "Bacon", price: 1.49),
        ]),
  ];

// getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];
  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    // if items already exist increase quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      // sinon l'ajoouter au panier
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }
  // remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartItem.quantity != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  // generate a receipt

  // format double value into money
}
