import 'package:flutter/material.dart';

class btnPrincipal extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const btnPrincipal({required this.onPressed, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Color(0xff5250f7),
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontFamily: 'PlusJakartaSans',
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
