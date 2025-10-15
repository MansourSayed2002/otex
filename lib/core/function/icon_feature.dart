import 'package:otex/core/constants/image_app.dart';

String iconFeature(String keys) {
  if (keys == "keep") {
    return IconApp.keep;
  } else if (keys == "world") {
    return IconApp.globe;
  } else if (keys == "adver") {
    return IconApp.workspacePremium;
  } else if (keys == "keep2") {
    return IconApp.keep;
  }
  return IconApp.keep;
}
