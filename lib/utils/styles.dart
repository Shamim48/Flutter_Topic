
import 'package:flutter/material.dart';
import 'package:widget_demo/utils/color_resources.dart';
import 'dimensions.dart';

const LatoLight = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w300,
);

const LatoRegular = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w400,
);

const LatoMedium = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w500,
);

const LatoBlack = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w500,
);

const LatoSemiBold = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w600,
);


const LatoBold = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w700,
);

textFieldDecoration(){
  return BoxDecoration(
    color: ColorResources.TEXT_FIELD_BG,
    borderRadius: BorderRadius.circular(30),
  );
}


