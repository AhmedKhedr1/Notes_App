import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constant.dart';
import 'package:notes_app/models/Note_Model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fitshAllNotes(){
    try{
      var notesbox=Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>notes =notesbox.values.toList();
      emit(NotesSuccess(notes));
    }
    catch(e){
      emit(NotesFailure(errorMassege: e.toString()));
    }
  }
}
