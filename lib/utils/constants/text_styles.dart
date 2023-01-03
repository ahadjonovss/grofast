import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grofast/utils/constants/colors.dart';

class TextStyles{
  static dynamic defaultStyle = GoogleFonts.getFont("Raleway",fontWeight: FontWeight.w700,fontSize: 28);
  static dynamic fs14Cgrey = GoogleFonts.getFont("Raleway",fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.C_9C9C9C);
  static dynamic fs16Cblack = GoogleFonts.getFont("Raleway",fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black);
}