import 'package:flutter/material.dart';

class CofferButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final Color color;
  final String text;

  const CofferButton({
    Key? key,
    required this.onTap,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
         height: 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              // fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}