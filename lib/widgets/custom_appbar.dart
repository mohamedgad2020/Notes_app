import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
          const Spacer(),
          CustomSearchicon(onPressed: onPressed, icon: icon),
        ],
      ),
    );
  }
}
