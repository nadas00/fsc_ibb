import 'package:flutter/material.dart';

class TransparentTextFieldWidget extends StatelessWidget {
  final String hint;
  const TransparentTextFieldWidget({
    Key key,
    @required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: TextField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(color: Colors.deepOrangeAccent),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: hint,
            fillColor: Colors.white70),
      ),
    );
  }
}
