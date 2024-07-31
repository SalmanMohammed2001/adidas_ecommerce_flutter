
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontsize = 20,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
  });

  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: fontsize, fontWeight: fontWeight, color: color),
    );
  }
}
