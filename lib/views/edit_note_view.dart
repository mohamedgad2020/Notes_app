import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

import '../models/notes_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        note: note,
      ),
    );
  }
}
