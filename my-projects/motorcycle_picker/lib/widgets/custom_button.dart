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
        // icon: Image.asset(
        //   'assets/images/icons8-google-144.png',
        //   height: 32,
        //   width: 32,
        // ),
        label: Text(text),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
