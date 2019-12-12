import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar sesion'),
      ),
      body: _formLogin(),
    );
  }

  Widget _formLogin() {

    return ListView();
  }
}