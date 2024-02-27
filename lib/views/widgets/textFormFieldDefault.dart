import 'package:flutter/material.dart';

class TextFormFieldDefault extends StatelessWidget {
  final TextEditingController controllerTextformField;
  final String labelText;
  const TextFormFieldDefault({
    super.key,
    required this.controllerTextformField,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: TextFormField(
        controller: controllerTextformField,
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
