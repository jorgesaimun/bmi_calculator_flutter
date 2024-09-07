import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final Function? onPress;

  const ReuseableCard({
    required this.colour,
    this.cardChild,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        }
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
