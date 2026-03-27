import 'package:flutter/material.dart';
import 'package:gestor_cliente_oficial/core/constants/assets_manager.dart';
import 'package:gestor_cliente_oficial/feutures/login/presentation/widgets/textFormfield.dart';

//web
class LoginPageWeb extends StatelessWidget {
  const LoginPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 50),
                SizedBox(height: 20),
                Text(
                  'Bienvenido!',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 30),
                //formulario de login
                fomularioLogin(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('¿No tienes una cuenta?'),
                    TextButton(onPressed: () {}, child: Text('Registrate')),
                  ],
                ),
                SizedBox(height: 20),
                //boton de iniciar sesion
                ElevatedButton(onPressed: () {}, child: Text('Iniciar Sesión')),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 158, 156, 156),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
                // border: Border.symmetric(
                //   vertical: BorderSide(color: Colors.black),
                // ),
                image: DecorationImage(
                  image: AssetImage(AssetsManager.loginBackground),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Mobile

class LoginPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Gestor de Clientes Mobile')),
    );
  }
}
