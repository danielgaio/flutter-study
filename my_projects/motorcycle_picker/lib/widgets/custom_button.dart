import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    // blue button from the login tutorial
    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     minimumSize: const Size(double.infinity, 40),
    //   ),
    //   onPressed: onTap,
    //   child: Text(text),
    // );
    return Center(
      child: FloatingActionButton.extended(
        onPressed: onTap,
        label: Text(text),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
