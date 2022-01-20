import 'package:flutter/material.dart';
import 'package:preferencias_usuario/providers/theme_provider.dart';
import 'package:preferencias_usuario/shared/preferences.dart';
import 'package:preferencias_usuario/widgets/side_manu.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings screen'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Ajustes',
                    style:
                        TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
                const Divider(),
                // adaptativo se mire diferente dependiendo del sistema operativo.
                SwitchListTile.adaptive(
                  value: Preferences.isDarkMode,
                  title: const Text('Dark mode'),
                  onChanged: (value) {
                    Preferences.isDarkMode = value;
                    final themeProvider =
                        Provider.of<ThemeProvider>(context, listen: false);
                    value
                        ? themeProvider.setDarkMode()
                        : themeProvider.setLigthMode();
                    setState(() {});
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  title: const Text('Masculino'),
                  value: 1,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    Preferences.gender = value ?? 1;
                    setState(() {});
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  title: const Text('Femenino'),
                  value: 2,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    Preferences.gender = value ?? 1;
                    setState(() {});
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    onChanged: (value) {
                      Preferences.name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: 'nombre', helperText: 'Nombre del usuario'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
