import 'package:flutter/material.dart';

Widget defaultButton(
        {double width,
        Color background = Colors.blue,
        String text,
        double height,
        Function function,
        TextAlign align,
        Alignment alignment,
        bool isUpperCase = true,
        double radius = 0}) =>
    Container(
      alignment: alignment,
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: align,
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: background),
    );

Widget defaultFormFieldd(
        {TextEditingController controller,
        TextInputType type,
        Function validat,
        String label,
        IconData prefix,
        IconData suffix,
        bool isPassword = false,
        double radius = 0}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validat,
      obscureText: isPassword,
      decoration: InputDecoration(
        fillColor: Colors.black12,
        filled: true,
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null ? Icon(suffix) : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide.none),
      ),
    );

Widget sizedBox({double height = 10}) => SizedBox(
      height: height,
    );

Widget textfield(
  Color color,
  double size,
  String text,
  FontWeight fontWeight,
) =>
    Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: "Gilroy"),
    );

