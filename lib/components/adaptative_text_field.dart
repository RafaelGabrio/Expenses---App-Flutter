import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final TextEditingController? valueController;
  final TextInputType? typeKeyboard;
  final Function(String)? submitForm;
  final String? inputDecoration;

  AdaptativeTextField({
    this.valueController,
    this.typeKeyboard,
    this.submitForm,
    this.inputDecoration,
  });


  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
          padding: const EdgeInsets.only(
            bottom: 10
          ),
          child: CupertinoTextField(
            controller: valueController,
            keyboardType: typeKeyboard,
            onSubmitted: submitForm,
            placeholder: inputDecoration,
            padding: EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 12,
            ),
          ),
        )
        : TextField(
            controller: valueController,
            keyboardType: typeKeyboard,
            onSubmitted: submitForm,
            decoration: InputDecoration(
              labelText: inputDecoration,
            ),
          );
  }
}
