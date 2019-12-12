import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEPEA-pul Que?'),
      ),
      body: _menuOption(),
    );

  }

  Widget _menuOption() {
    return ListView();
  }
}