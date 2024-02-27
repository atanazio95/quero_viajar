import 'package:flutter/material.dart';

class BottonDefault extends StatelessWidget {
  final String text;
  final Function onTap;
  const BottonDefault({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: altura * 0.03),
      height: altura * 0.1,
      width: largura * 0.9,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.red,
        ),
        onPressed: () => onTap(),
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
