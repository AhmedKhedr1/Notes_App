
import 'package:flutter/material.dart';
import 'package:notes_app/Views/EditNoteView.dart';

class Note_Item extends StatelessWidget {
  const Note_Item({super.key});

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
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom:16 ,top: 16),
                  child: Text(
                    'Build your career with Tharwat Samy ',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  'aug 30,2024 ',
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
