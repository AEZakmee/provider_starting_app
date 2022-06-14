import 'package:flutter/material.dart';

LinearGradient kOverImageGradient(Color? color) => LinearGradient(
      colors: [
        color ?? Colors.black,
        Colors.transparent,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

LinearGradient kUnderImageGradient(Color? color) => LinearGradient(
      colors: [
        Colors.transparent,
        color ?? Colors.black,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

LinearGradient kOnRightImageGradient(Color? color) => LinearGradient(
      colors: [
        Colors.transparent,
        color ?? Colors.black,
      ],
    );
