import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foreach_exam_gaetan_juston/components/textfields/textfields.dart';
import 'package:foreach_exam_gaetan_juston/routers/app_router.gr.dart';
import 'package:foreach_exam_gaetan_juston/services/auth_services.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/background.png'),
              fit: BoxFit.fill),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Register",
                      style: TextStyle(color: Colors.white, fontSize: 24.0)),
                  const SizedBox(height: 30),
                  reusableTextField(
                      "Email", Icons.mail, false, _emailTextController),
                  const SizedBox(height: 30),
                  reusableTextField(
                      "Password", Icons.lock, true, _passwordTextController),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () =>
                        context.router.popAndPush(const LoginRoute()),
                    style: const ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white)),
                    child: const Text("Déjà inscrit ? Connectez vous !"),
                  ),
                  const SizedBox(height: 30),
                  TextButton.icon(
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(117, 92, 66, 1),
                        ),
                        foregroundColor:
                            const MaterialStatePropertyAll<Color>(Colors.white),
                        side: MaterialStatePropertyAll<BorderSide>(
                          BorderSide(
                            width: 1.0,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.all(16))),
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                    label: const Text('S\'enregistrer'),
                    onPressed: () {
                      AuthenticationService(FirebaseAuth.instance).signUp(
                          email: _emailTextController.text,
                          password: _passwordTextController.text);
                    },
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
