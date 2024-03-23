import 'package:flutter/material.dart';

class PCircularButton extends StatelessWidget {
  const PCircularButton(
      {super.key,
      required this.backgroundColor,
      required this.icon,
      this.onTap});

  final Color backgroundColor;
  final Icon icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30), bottom: Radius.circular(30)),
      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30), bottom: Radius.circular(30)),
            ),
            child: IconButton(
              icon: icon,
              color: backgroundColor,
              onPressed: onTap,
            ),
          )),
    );
  }
}
