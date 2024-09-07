import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Widget child;
  final Function onPress;
  const RoundIconButton({
    required this.child,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: const Color.fromARGB(255, 78, 76, 76),
      onPressed: () {
        onPress();
      },
      child: child,
    );
  }
}
