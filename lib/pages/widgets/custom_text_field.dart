import 'package:flutter/material.dart';
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
      cursorColor: Color.fromARGB(255, 201, 128, 128),
      controller: controller,
      onChanged: onchange,
      obscureText: obscure,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 201, 128, 128),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 201, 128, 128)),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 201, 128, 128)),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labeltextt,
        suffixIcon: icon,
      ),
    );
  }
}
//Icon(Icons.password)