import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final Icon icon;
  final Function function;
  final String text;
  const ButtonWithIcon({super.key, required this.icon, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        child: ElevatedButton.icon(
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(ContinuousRectangleBorder())
            ),
            onPressed: ()=>function(),
            icon: icon,
            label: Text(text)));
  }
}
