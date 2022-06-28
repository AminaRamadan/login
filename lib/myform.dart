import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final controller;
  final keyboardType;
  final hintText;
  final label;
  final decoration;
  final bool isPassword;
  final IconData? suffix;
  final Function()? suffixPressed;
  final InputBorder? border ;
  final BorderRadius? borderRadius;
  final bool obscure ;
  final String? Function(String?)? validate;
  const MyForm({Key? key,
    this.controller,
    this.keyboardType,
    this.hintText,
    this.label,
    this.decoration,
    this.suffix,
    this.suffixPressed,
    this.border,
    this.borderRadius,
    this.validate,
    this.isPassword= false,
    this.obscure = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validate,
      obscureText: isPassword,


      decoration: InputDecoration(
        suffixIcon: suffix != null ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffix,
          ),
        ) : null,
        // border: OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}
