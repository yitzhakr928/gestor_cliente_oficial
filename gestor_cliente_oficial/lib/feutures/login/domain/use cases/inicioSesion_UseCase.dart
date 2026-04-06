class InicioSesion {
  final String usuario;
  final String contrasena;

  InicioSesion({required this.usuario, required this.contrasena});

  void IniciarSecion() {
    print("Sesion iniciada ${usuario} ${contrasena}");
  }
}
