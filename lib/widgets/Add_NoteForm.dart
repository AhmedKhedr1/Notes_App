import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formkey = GlobalKey();
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          Custom_textField(
            onSaved: (value) {
              title = value;
            },
            Hint: 'Title',
          ),
          Custom_textField(
            onSaved: (value) {
              subtitle = value;
            },
            Hint: 'Sub Title',
            Maxlines: 5,
          ),
          const SizedBox(
            height: 90,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                      isloading:state is AddNoteLoading?true:false ,
                      ontap: () {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          var notemodel = NoteModel(
                              Title: title!,
                              SubTitle: subtitle!,
                              date: DateTime.now().toString(),
                              color: Colors.blue.value);
                          BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    );
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
