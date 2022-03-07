import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = "settings";

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Niky';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Settings')),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                title: const Text('Dark Mode'),
                value: isDarkMode,
                onChanged: (value) {
                  isDarkMode = value;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: gender,
                title: const Text("Masculino"),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: gender,
                title: const Text("Femenino"),
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Tobias',
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: "Nombre de usuario",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
