class Breakpoints {
  static const pc = 1200;
  static const tablet = 900;
  static const phone = 600;

  static const twoColLayoutMinWidth = 640;
}

double horizontalPadding(double? screenWidth) {
  if (screenWidth! > Breakpoints.pc) {
    return 0;
  } else if (screenWidth > Breakpoints.phone) {
    return 28;
  } else {
    return 20;
  }
}

double sliverHorizontalPadding(double? screenWidth) {
  if (screenWidth! > Breakpoints.pc) {
    return (screenWidth - Breakpoints.pc) / 2;
  } else if (screenWidth > Breakpoints.phone) {
    return 28;
  } else {
    return 20;
  }
}
