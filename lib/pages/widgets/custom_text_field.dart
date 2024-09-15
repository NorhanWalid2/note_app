import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
//import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hint,
    required this.labeltextt,
    required this.obscure,
    this.icon,
    this.onchange,
    this.maxLine = 1,
  });
  String labeltextt;
  bool obscure;
  String hint;
  Widget? icon;
  final int maxLine;
  TextEditingController controller = TextEditingController();
  Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: KPrimaryColor,
      controller: controller,
      onChanged: onchange,
      obscureText: obscure,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: KPrimaryColor,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: KPrimaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: KPrimaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labeltextt,
        suffixIcon: icon,
      ),
    );
  }
}
//Icon(Icons.password)