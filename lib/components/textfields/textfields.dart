import 'package:flutter/material.dart';

TextFormField reusableTextField(String label, IconData icon,
    bool isPasswordType, TextEditingController controller) {
  return TextFormField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.white70),
      labelText: label,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      fillColor: Colors.black.withOpacity(0.1),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
              width: 0, style: BorderStyle.solid, color: Colors.white)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
              width: 0, style: BorderStyle.solid, color: Colors.white)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
