import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: SafeArea(
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(title: 'Notes', icon: FontAwesomeIcons.search),
            SizedBox(
              height: 5,
            ),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
