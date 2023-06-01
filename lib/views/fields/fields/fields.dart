import 'package:flutter/material.dart';
import 'package:foreach_exam_gaetan_juston/endpoints/user/user_db.dart';

class Fields extends StatefulWidget {
  const Fields({super.key});

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  final newData = <String, dynamic>{
    'firstName': 'John',
    'lastName': "Doe",
    'email': 'test@test.com',
    'coins': 10,
    "rankingPoint": 0
  };
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () async {
              await UserFirestoreService().addUser(newData);
            },
            child: const Text("data")));
  }
}
