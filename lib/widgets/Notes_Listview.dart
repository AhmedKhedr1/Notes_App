
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Note_item.dart';

class Notes_lidtview extends StatelessWidget {
  const Notes_lidtview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return Note_Item();
        },
      ),
    );
  }
}
