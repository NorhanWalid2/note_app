import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custom_button.dart';
import 'package:notes_app/pages/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: FormAddNote(),
      ),
    );
  }
}

class FormAddNote extends StatefulWidget {
  const FormAddNote({
    super.key,
  });

  @override
  State<FormAddNote> createState() => _FormAddNoteState();
}

class _FormAddNoteState extends State<FormAddNote> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSave: (value) {
              title = title;
            },
            hint: 'title',
            labeltextt: 'title',
            obscure: false,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSave: (value) {
              subtitle = value;
            },
            hint: 'content',
            labeltextt: 'content',
            obscure: false,
            maxLine: 5,
          ),
          SizedBox(
            height: 90,
          ),
          CustomButton(
            conText: 'Add',
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
