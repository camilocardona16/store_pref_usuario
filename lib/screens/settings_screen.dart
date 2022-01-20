import 'package:flutter/material.dart';
import 'package:preferencias_usuario/widgets/side_manu.dart';

class SettingsScreen extends StatelessWidget {
  static String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings screen'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
