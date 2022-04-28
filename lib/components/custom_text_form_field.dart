import 'package:flutter/material.dart';
import 'package:flutter_ui_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  const CustomTextFormField(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: small_gap),
        TextFormField(
          //  ! -> null이 절대 아니다.
          validator: (value) => value!.isEmpty
              ? "Please enter some text" // 1. 값이 없으면 경고 표시
              : null,
          obscureText:
              // 2. 해당 TextFormField가 비밀번호 입력 양식이면 **** 처리 해주기
              text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              // 3. 기본 TextFormField 디자인
              borderRadius: BorderRadius.circular(20)
            ),
            focusedBorder: OutlineInputBorder(
              // 4. 포커스 시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20)
            ),
            errorBorder: OutlineInputBorder(
              // 5. 에러 발생 시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20)
            ),
            focusedErrorBorder: OutlineInputBorder(
              // 6. 에러 발생 후 포커스 시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20)
            ),
          ),

        ),
      ],
    );
  }
}
