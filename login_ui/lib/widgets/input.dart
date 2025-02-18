import 'package:flutter/material.dart';

class Input extends StatelessWidget{
  const Input({super.key,required this.text});
  final String text ;

  @override
  Widget build(BuildContext context) {
   return TextFormField(
                            
        decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder:
         OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)),
          label: Text(text),   
      ),
      );
  }
  
}