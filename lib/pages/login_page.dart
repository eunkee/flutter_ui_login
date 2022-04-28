import 'package:flutter/material.dart';
import 'package:flutter_ui_login/components/custom_form.dart';
import 'package:flutter_ui_login/components/logo.dart';
import 'package:flutter_ui_login/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: xlarge_gap),
            const Logo("Login"),
            const SizedBox(height: large_gap),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
