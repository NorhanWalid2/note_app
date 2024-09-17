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
    this.onSave,
  });
  final String labeltextt;
  final bool obscure;
  final String hint;
  final Widget? icon;
  final int maxLine;
  TextEditingController controller = TextEditingController();
  final Function(String)? onchange;
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "required field";
        } else {
          return null;
        }
      },
      onSaved: onSave,
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
        errorBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Colors.red), // Red border on error
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.red), // Red border when focused in error state
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labeltextt,
        suffixIcon: icon,
      ),
    );
  }
}
//Icon(Icons.password)