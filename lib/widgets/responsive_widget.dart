import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveWidget(
      {super.key, required this.mobile, this.tablet, required this.desktop});


  static isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;
  static isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 840;
  static isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 840;

  @override
  Widget build(BuildContext context) {
    if(isMobile(context)){
      return mobile;
    }else if(isTablet(context) && tablet != null){
      return tablet!;
    }else{
      return desktop;
    }
  }
}
