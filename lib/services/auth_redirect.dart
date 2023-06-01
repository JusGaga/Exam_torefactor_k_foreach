import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foreach_exam_gaetan_juston/routers/app_router.gr.dart';

class AuthStateRedirect extends StatelessWidget {
  const AuthStateRedirect({Key? key, required this.user}) : super(key: key);

  final User? user;

  void _redirectBasedOnAuthState(BuildContext context, User? user) {
    if (user != null) {
      context.router.replace(const FieldsRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    _redirectBasedOnAuthState(context, user);
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
