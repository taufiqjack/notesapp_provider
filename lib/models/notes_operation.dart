import 'package:flutter/material.dart';
import 'package:notesapp_provider/pages/note.dart';

class NotesOperation with ChangeNotifier {
  List<Note> notes = [];
  
  List <Note> get getNotes {
    return notes;
  }

  NotesOperation(){
    addNewNote("Catatan Pertama", "diskripsi catatan pertama");
  }

  void addNewNote(String title, String description){
    Note note = Note(title, description);
    notes.add(note);
    notifyListeners();
  }
}
