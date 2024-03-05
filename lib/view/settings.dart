import 'package:climatecast/routes/name_route.dart';
import 'package:flutter/material.dart';

import '../widget/cust_tile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _logout(){
    Navigator.pushReplacementNamed(context, RouteName.loginscreen);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Cust_tile(
              onPressed: (){},
              leading: 'username',
              icon: const Icon(Icons.person),
            ),
            const SizedBox(
              height: 10,
            ),
            Cust_tile(
              onPressed: (){},
              leading: 'email',
              icon: const Icon(Icons.email),
            ),
            const SizedBox(
              height: 10,
            ),
            Cust_tile(
              onPressed: (){},
              leading: 'password',
              icon: const Icon(Icons.password),
            ),
            const SizedBox(
              height: 10,
            ),
            Cust_tile(
              onPressed:_logout,
              icon: const Icon(Icons.logout),
              leading: 'logout',
            )
          ],
        ),
      ),
    );
  }
}
