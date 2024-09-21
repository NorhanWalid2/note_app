import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/custom_button.dart';
import 'package:notes_app/pages/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotesFailer) {
              print('failed ${state.errorMessage}');
            }
            if (state is AddNotesSuccessful) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: ModalProgressHUD(
                  inAsyncCall: state is AddNotesLoading ? true : false,
                  child: FormAddNote()),
            );
          },
        ),
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
              title = value;
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
                var noteModel = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
