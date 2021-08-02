import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  final String label;
  final double fontSize;
  final void Function() function;
  const InputButton(
      {required this.label, required this.fontSize, required this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: function,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: "Gilroy",
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
