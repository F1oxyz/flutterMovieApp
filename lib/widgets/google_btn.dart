import 'package:flutter/material.dart';

class singInButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final String urlImg;

  const singInButton({
    required this.onPressed,
    required this.label,
    required this.urlImg,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white, // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 2, // Subtle shadow
        padding: const EdgeInsets.symmetric(horizontal: 16),
        minimumSize: const Size(double.infinity, 54), // Full-width button
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            urlImg,
            width: 20,
          ),
          const SizedBox(width: 20),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
