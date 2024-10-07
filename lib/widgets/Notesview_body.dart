import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:notes_app/widgets/Custom_AppBar.dart';
import 'package:notes_app/widgets/Notes_Listview.dart';

class NotesView_body extends StatefulWidget {
  const NotesView_body({super.key});

  @override
  State<NotesView_body> createState() => _NotesView_bodyState();
}

class _NotesView_bodyState extends State<NotesView_body> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fitshAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            CustomAppbar(Title: 'Notes',icon: Icons.search,),
            Expanded(child: Notes_lidtview())
          ],
        ),
      ),
    );
  }
}
