import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final String path;
  const Button({super.key,required this.path});
  @override
  Widget build(BuildContext context) {
    return              Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
        BoxShadow(
          color: Colors.black26, // Shadow color
          blurRadius: 6.0, // Softness of the shadow
          spreadRadius: 1.0, // How far the shadow extends
          offset: Offset(3, 3), // Moves the shadow diagonally
        ),
            ],
          ),
          child: Center(
            child: FractionallySizedBox(
        widthFactor: 0.6, // 60% of the container width
        heightFactor: 0.6, // 60% of the container height
        child: Image.asset(
          path,
          fit: BoxFit.contain, // Ensures the image fits without cropping
        ),
            ),
          ),
        );
   
  }
  
}