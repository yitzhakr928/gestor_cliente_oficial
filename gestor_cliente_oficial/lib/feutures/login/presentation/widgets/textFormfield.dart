import 'package:flutter/material.dart';

Widget fomularioLogin() {
  return Form(
    child: Container(
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          textFormField(labelText: 'Usuario'),
          SizedBox(height: 10),
          textFormField(labelText: 'Contraseña', pass: true),
        ],
      ),
    ),
  );
}

TextFormField textFormField({required String labelText, bool pass = false}) {
  return TextFormField(
    obscureText: pass,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: labelText,
    ),
  );
}
