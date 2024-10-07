import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/widgets/Note_item.dart';

class Notes_lidtview extends StatelessWidget {
  const Notes_lidtview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 21),
          child: ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Note_Item();
            },
          ),
        );
      },
    );
  }
}
