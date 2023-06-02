import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirestoreService {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('Users');

  Future<List<Object?>> getUsers() async {
    final QuerySnapshot snapshot = await _collectionReference.get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Stream<DocumentSnapshot<Object?>> getUser(String userId) {
    return _collectionReference.doc(userId).snapshots();
  }

  Future<void> addUser(Map<String, dynamic> data, userId) async {
    await _collectionReference.doc(userId).set(data);
  }

  Future<void> updateUser(String userId, Map<String, dynamic> data) async {
    await _collectionReference.doc(userId).update(data);
  }

  Future<void> deleteUser(String userId) async {
    await _collectionReference.doc(userId).delete();
  }
}
