import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custom_appbar.dart';
import 'package:notes_app/pages/widgets/custom_button.dart';
import 'package:notes_app/pages/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              text: 'Edit Note',
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(hint: 'title', labeltextt: 'title', obscure: false),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'content',
              labeltextt: 'content',
              obscure: false,
              maxLine: 5,
            ),
            SizedBox(
              height: 90,
            ),
            CustomButton(conText: 'Add'),
          ],
        ),
      ),
    );
  }
}
