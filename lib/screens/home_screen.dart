import 'package:flutter/material.dart';
import 'package:preferencias_usuario/shared/preferences.dart';
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('is Dark Mode : ${Preferences.isDarkMode.toString()} '),
            const Divider(),
            Text('Genero: : ${Preferences.gender}'),
            const Divider(),
            Text('Nombre usuario: : ${Preferences.name}'),
            const Divider(),
          ],
        ));
  }
}
