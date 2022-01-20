import 'package:flutter/material.dart';
import 'package:preferencias_usuario/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static String routerName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home screen'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
