import 'package:flutter/material.dart';
import 'package:restaurant_app/components/my_drawer_tile.dart';
import 'package:restaurant_app/pages/settings_page.dart';
import 'package:restaurant_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Icon(Icons.lock_open_rounded,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            MyDrawerTile(
                text: "Accueil",
                icon: Icons.home,
                onTap: () => Navigator.pop(context)),
            MyDrawerTile(
                text: "Paramètres",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
                }),
            const Spacer(),
            MyDrawerTile(text: "Deconnexion", icon: Icons.logout, onTap: () {}),
            const SizedBox(height: 25),
          ],
        ));
  }
}
