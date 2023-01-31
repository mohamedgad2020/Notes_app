import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_notes_bottomsheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNotesBottomSheet();
            },
          );
        },
        child: const Icon(
          FontAwesomeIcons.plus,
          size: 20,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
