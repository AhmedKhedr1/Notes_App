
import 'package:flutter/material.dart';
import 'package:notes_app/Views/EditNoteView.dart';
import 'package:notes_app/models/Note_Model.dart';

class Note_Item extends StatelessWidget {
   Note_Item({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Editnoteview() ;
          },));
        },
        child: Container(
          padding:const EdgeInsets.only(top:24 ,bottom:24 ,left: 8),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xffFFCC80)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(
                  note.Title,
                  style:const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom:16 ,top: 16),
                  child: Text(
                    note.SubTitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing:  Icon(
                  Icons.delete,
                  color:Color(note.color),
                  size: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  note.date,
                  style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
