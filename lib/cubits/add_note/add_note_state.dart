part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

 class AddNoteCubitInitial extends AddNoteState {}
 class AddNoteLoading extends AddNoteState {}
 class AddNoteSuccess extends AddNoteState {}
  class AddNoteFailure extends AddNoteState {

    final String errorMassege;
     AddNoteFailure(this.errorMassege);
  }
