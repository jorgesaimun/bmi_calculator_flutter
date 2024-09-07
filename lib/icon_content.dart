import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String content;
  const IconContent({
    required this.icon,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          ' $content',
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
