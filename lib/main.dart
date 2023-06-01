import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foreach_exam_gaetan_juston/routers/app_router.dart';
import 'package:foreach_exam_gaetan_juston/services/auth_services.dart';
import 'package:json_theme/json_theme.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final themeStr = await rootBundle.loadString('assets/Torrefacteur.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(MyApp(theme: theme));
}

class MyApp extends StatelessWidget {
  final ThemeData theme;
  final _appRouter = AppRouter();

  MyApp({Key? key, required this.theme}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return StreamBuilder(
    //     stream: AuthenticationService(FirebaseAuth.instance).authStateChanges,
    //     builder: ((context, snapshot) {
    //       if (snapshot.hasData) {
    //         return MaterialApp.router(
    //             routerConfig: _appRouter.config(), theme: theme);
    //       } else {
    //         return MaterialApp.router(
    //           routerConfig: _appRouter.config(),
    //           theme: theme,
    //         );
    //      }
    //   }));
    return MaterialApp.router(
        routerConfig: _appRouter.config(), title: 'Flutter Demo', theme: theme);
  }
}
