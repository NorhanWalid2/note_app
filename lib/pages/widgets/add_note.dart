import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(hint: 'title', labeltextt: 'title', obscure: false),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: 'content',
            labeltextt: 'content',
            obscure: false,
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
