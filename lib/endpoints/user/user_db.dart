import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirestoreService {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('Users');

  Future<List<Object?>> getUsers() async {
    final QuerySnapshot snapshot = await _collectionReference.get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<void> addUser(Map<String, dynamic> data) async {
    await _collectionReference.add(data);
  }

  Future<void> updateUser(String userId, Map<String, dynamic> data) async {
    await _collectionReference.doc(userId).update(data);
  }

  Future<void> deleteUser(String userId) async {
    await _collectionReference.doc(userId).delete();
  }
}
