import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foreach_exam_gaetan_juston/components/textfields/textfields.dart';

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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(children: [
              reusableTextField(
                  "Enter Email", Icons.mail, false, _emailTextController),
              reusableTextField(
                  "Enter Password", Icons.lock, false, _passwordTextController)
            ]),
          ),
        ),
      ),
    );
  }
}
