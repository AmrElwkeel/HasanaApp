

import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';




class CustomContainer extends StatelessWidget {

  final Widget widget ;
  final double height ;
  final double width ;
  final double bordRadius ;
   final   EdgeInsetsGeometry? margin;

  const CustomContainer({
    required this.widget,
    required this.height,
    required this.width,
    required this.bordRadius,
      this.margin,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: height,
      width: width,
      margin: margin,

      decoration: BoxDecoration(
        // color: Colors.white,
        color: AppColors.greenColor,
        borderRadius: BorderRadius.circular(bordRadius),
        image: const DecorationImage(
            image: AssetImage("assets/backg.jpg"),
            fit: BoxFit.fill,
            opacity: 50,
            repeat: ImageRepeat.repeat
        ),

      ),
      child: widget,
    );
  }
}
