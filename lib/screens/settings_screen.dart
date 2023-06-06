import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
        title: Text(title),
        subtitle: Text(subtitle),
        value: value,
        onChanged: onChanged);
  }

  var settings = new Settings();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
            title: const Text(
          'Configurações',
        )),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                      'Sem Glútem',
                      'Só exibe refeições sem glúten',
                      settings.isGlutenFree,
                      (p0) => setState(() => settings.isGlutenFree = p0)),
                  _createSwitch(
                      'Sem lactose',
                      'Só exibe refeições sem lactose',
                      settings.isLactoseFree,
                      (p0) => setState(() => settings.isLactoseFree = p0)),
                  _createSwitch(
                      'Vegana',
                      'Só exibe refeições Veganas',
                      settings.isVegan,
                      (p0) => setState(() => settings.isVegan = p0)),
                  _createSwitch(
                      'Vegetariana',
                      'Só exibe refeições Vegetarianas',
                      settings.isVegetarian,
                      (p0) => setState(() => settings.isVegetarian = p0)),
                ],
              ),
            )
          ],
        ));
  }
}
