import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foreach_exam_gaetan_juston/routers/app_router.gr.dart';
import 'package:foreach_exam_gaetan_juston/services/auth_services.dart';

@RoutePage()
class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  void _redirectBasedOnAuthState(BuildContext context, User? user) {
    if (user != null) {
      context.router.replace(const FieldsRoute());
    } else {
      context.router.replace(const LoginRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: AuthenticationService(FirebaseAuth.instance).authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        _redirectBasedOnAuthState(context, snapshot.data);

        return Container(); // Retournez un widget ici si nécessaire
      },
    );
  }
}
