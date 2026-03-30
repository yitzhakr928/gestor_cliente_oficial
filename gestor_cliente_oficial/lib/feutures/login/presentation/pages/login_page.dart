import 'package:flutter/material.dart';
import 'package:gestor_cliente_oficial/feutures/login/presentation/widgets/LoginsMobile_widget.dart';
import 'package:gestor_cliente_oficial/feutures/login/presentation/widgets/logins_widget_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < 600;
          return AnimatedSwitcher(
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            duration: const Duration(milliseconds: 500),
            child: isMobile ? LoginPageMobile() : LoginPageWeb(),
          );
        },
      ),
    );
  }
}
