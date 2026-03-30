import 'package:flutter/material.dart';
import 'package:gestor_cliente_oficial/core/constants/assets_manager.dart';
import 'package:gestor_cliente_oficial/feutures/login/presentation/widgets/textFormfield.dart';

//Mobile

class LoginPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 158, 156, 156),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(AssetsManager.loginBackground),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: FlutterLogo(size: 150),
              ),
            ],
          ),

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
    );
  }
}
