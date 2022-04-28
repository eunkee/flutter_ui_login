import 'package:flutter/material.dart';
import 'package:flutter_ui_login/components/custom_text_form_field.dart';
import 'package:flutter_ui_login/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key

  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          const CustomTextFormField("Email"),
          const SizedBox(height: medium_gap),
          const CustomTextFormField("Password"),
          const SizedBox(height: large_gap),
          TextButton(
            child: const Text('Login'),
            onPressed: () {
              if (_formKey.currentState!.validate()) { // 유효성 검사 : 값이 비어있는지
                Navigator.pushNamed(context, "/home"); // 라우터: 페이지 이동
              }
            },
          )
        ],
      ),
    );
  }
}