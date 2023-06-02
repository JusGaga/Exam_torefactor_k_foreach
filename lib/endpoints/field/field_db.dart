import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foreach_exam_gaetan_juston/modele/fields/fields.dart';

class FieldFirestoreService {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('Fields');

  Stream<List<Field>> getFields() {
    return _collectionReference.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        if (data is Map<String, dynamic>) {
          return Field.fromMap(data);
        }
        throw Exception('Invalid field data');
      }).toList();
    });
  }

  Stream<Field> getField(String fieldId) {
    return _collectionReference.doc(fieldId).snapshots().map((snapshot) {
      final data = snapshot.data();
      if (data is Map<String, dynamic>) {
        return Field.fromMap(data);
      }
      throw Exception('Invalid field data');
    });
  }

  Future<void> addField(Field field) async {
    await _collectionReference.doc(field.id).set(field.toMap());
  }

  Future<void> updateField(Field field) async {
    await _collectionReference.doc(field.id).update(field.toMap());
  }

  Future<void> deleteField(String fieldId) async {
    await _collectionReference.doc(fieldId).delete();
  }
}
