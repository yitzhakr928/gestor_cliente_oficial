import 'package:flutter/material.dart';

Widget fomularioLogin() {
  return const _FomularioLoginWidget();
}

class _FomularioLoginWidget extends StatefulWidget {
  const _FomularioLoginWidget({Key? key}) : super(key: key);

  @override
  _FomularioLoginWidgetState createState() => _FomularioLoginWidgetState();
}

class _FomularioLoginWidgetState extends State<_FomularioLoginWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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

  void Save(String value) {
    print(value);
  }
}

TextFormField textFormField({required String labelText, bool pass = false}) {
  return TextFormField(
    obscureText: pass,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: labelText,
    ),
    onChanged: (value) {
      print(value);
    },
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor llene los parametros';
      }
      return null;
    },
    onSaved: (value) {
      print(value);
    },
  );
}
