import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.conText, this.ontap, this.isLoading = false});
  String conText;
  VoidCallback? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: KPrimaryColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  conText,
                  style: const TextStyle(fontSize: 25, color: Colors.black),
                ),
        ),
      ),
    );
  }
}
