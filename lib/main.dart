import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Constant.dart';
import 'package:notes_app/Simple_blocopserver.dart';
import 'package:notes_app/Views/Notes_View.dart';
import 'package:notes_app/models/Note_Model.dart';

void main() async {
  
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocopserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const NotesScreen(),
    );
  }
}
