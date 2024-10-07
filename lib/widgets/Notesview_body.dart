import 'package:flutter/material.dart';

import 'package:notes_app/widgets/Custom_AppBar.dart';
import 'package:notes_app/widgets/Notes_Listview.dart';

class NotesView_body extends StatelessWidget {
  const NotesView_body({super.key});

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
