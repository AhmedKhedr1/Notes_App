import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_AppBar.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';

class Editnoteviewbody extends StatelessWidget {
  const Editnoteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
           const SizedBox(
              height: 45,
            ),
           const CustomAppbar(
              Title: 'Edit Note',
              icon: Icons.check,
            ),
            Custom_textField(Hint: 'Title'),
            Custom_textField(
              Hint: 'Content',
              Maxlines: 5,
            )
          ],
        ),
      ),
    );
  }
}
