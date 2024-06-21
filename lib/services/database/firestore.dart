import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection("orders");

  // method to save order to db
  Future<void> saveOrderToDatabase(DateTime reservationDate) async {
    await orders.add({
      'reservationDate': reservationDate,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}
