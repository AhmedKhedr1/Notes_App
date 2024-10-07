import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/Custom_Icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.Title, required this.icon});
final String Title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          Title,
          style: TextStyle(fontSize: 28),
        ),
        Custom_icon(icon: icon,)
      ],
    );
  }
}
