import 'package:flutter/material.dart';
import 'package:notes_app/Constant.dart';

class Custom_textField extends StatelessWidget {
   Custom_textField({super.key, required this.Hint,  this.Maxlines=1,this.onSaved});
final String Hint;
final int Maxlines;
void Function(String?)?onSaved ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if(value?.isEmpty ?? true ){
            return 'Field is required';
          }
          else{
            return null;
          }
        },
        maxLines: Maxlines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: Hint,
          border: Build_border(),
          enabledBorder: Build_border(),
          focusedBorder: Build_border(kPrimaryColor),)
      ),
    );
  }

  OutlineInputBorder Build_border([ color]) {
    return OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:  BorderSide(color: color?? Colors.white));
  }
}
