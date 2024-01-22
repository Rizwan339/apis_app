import 'package:apis_app/app_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const FlutterLogo(
              size: 72,
            ),
            AppButton(
              operation: 'GET',
              description: 'Fetch Users',
              operationColor: Colors.lightGreen,
              onPressed: () {},
            ),
            AppButton(
              operation: 'POST',
              description: 'Add User',
              operationColor: Colors.lightGreen,
              onPressed: () {},
            ),
            AppButton(
              operation: 'PUT',
              description: 'Edit User',
              operationColor: Colors.lightGreen,
              onPressed: () {},
            ),
            AppButton(
              operation: 'DEL',
              description: 'Delete User',
              operationColor: Colors.lightGreen,
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
