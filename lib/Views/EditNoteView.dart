import 'package:flutter/material.dart';
import 'package:notes_app/widgets/EditNoteViewBody.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editnoteviewbody(),
    );
  }
}