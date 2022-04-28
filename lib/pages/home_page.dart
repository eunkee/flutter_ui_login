import 'package:flutter/material.dart';
import 'package:flutter_ui_login/components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 200),
            const Logo("Home Page"),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: const Text("Get Started"),
            )
          ],
        ),
      ),
    );
  }
}