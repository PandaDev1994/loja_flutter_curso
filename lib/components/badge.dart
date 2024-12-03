import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;
  const Badgee({
    super.key,
    required this.child,
    required this.value,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 3,
          child: Container(
            constraints: const BoxConstraints(minWidth: 16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.redAccent,
            ),
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: const TextStyle(fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}
