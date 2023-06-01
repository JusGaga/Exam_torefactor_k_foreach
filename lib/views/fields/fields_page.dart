import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foreach_exam_gaetan_juston/routers/app_router.gr.dart';
import 'package:foreach_exam_gaetan_juston/services/auth_redirect.dart';
import 'package:foreach_exam_gaetan_juston/services/auth_services.dart';

@RoutePage()
class FieldsPage extends StatefulWidget {
  const FieldsPage({super.key});

  @override
  State<FieldsPage> createState() => _FieldsPageState();
}

class _FieldsPageState extends State<FieldsPage> {
  int _selectedTab = 0;

  final List _pages = const [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.account_circle_rounded,
            color: Color.fromRGBO(117, 92, 66, 1), size: 32),
        actions: [
          SizedBox(
            width: 64,
            child: IconButton(
              onPressed: () {
                AuthenticationService(FirebaseAuth.instance).signOut();
                context.router.popAndPush(const LoginRoute());
              },
              icon: const Icon(Icons.logout_rounded,
                  color: Color.fromRGBO(117, 92, 66, 1), size: 32),
            ),
          )
        ],
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(29, 67, 62, 1),
        onTap: (index) => _changeTab(index),
        selectedItemColor: const Color.fromRGBO(117, 92, 66, 1),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.local_florist_rounded), label: "Fields"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.backpack_rounded), label: "inventory"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "crafting"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_rounded), label: "CMTM"),
        ],
      ),
    );
  }
}
