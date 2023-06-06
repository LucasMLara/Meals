import 'package:flutter/material.dart';
import '../components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
          title: const Text(
        'Configurações',
      )),
      body: const Center(
        child: Text(
          'Configurações!',
        ),
      ),
    );
  }
}
