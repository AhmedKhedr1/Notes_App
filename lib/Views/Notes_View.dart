import 'package:flutter/material.dart';
import 'package:notes_app/widgets/AddModelBottomSheet.dart';
import 'package:notes_app/widgets/Notesview_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesView_body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
            ),
            context: context,
            builder: (context) {
              return  AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
