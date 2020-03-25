import 'package:flutter/widgets.dart';

/// UI适配
class SizeConfig {

  // dp in android / pt in ios
  double screentWidth, screenyHeight;

  // 1/100 of screen
  double percentageOfWidth, percentageOfHeight;
  // 1/100 of screen exclude 上下边距 （主要用于 刘海  和  内置导航键）
  double safeWidth, safeHeight;
  // design width / height
  double designW, designH;

  // Signlton mode
  factory SizeConfig() => _getInstance();
  static SizeConfig get instance => _getInstance();
  static SizeConfig _instance;
  SizeConfig._internal() {
    percentageOfWidth = percentageOfHeight = 0;
  }
  static SizeConfig _getInstance() {
    if (_instance == null) {
      _instance = new SizeConfig._internal();
    }
    return _instance;
  }

  // UI设计图大小，比如667
  void init(BuildContext context, double dw, double dh) {
    MediaQueryData mediaData = MediaQuery.of(context);
    //密度
    // double mRatio = MediaQuery.of(context).devicePixelRatio;
    screentWidth = mediaData.size.width;  // dp
    screenyHeight = mediaData.size.height;
    percentageOfWidth = screentWidth / 100.0;
    percentageOfHeight = screenyHeight / 100.0;

    // 上下边距 （主要用于 刘海  和  内置导航键）
    safeWidth = screentWidth - (mediaData.padding.left + mediaData.padding.right);
    safeHeight = screenyHeight - (mediaData.padding.top + mediaData.padding.bottom);

    designW = dw;
    designH = dh;
  }
  double getdw(double w) {
    return w * screentWidth / designW;
  }
  double getdh(double h) {
    return h * screenyHeight / designH;
  }
  double getfont(double fontsize) {
    return fontsize * safeWidth / designW;
  }
}

// design width => real width in this device
double getdw(double w) {
  return SizeConfig().getdw(w);
}
// design height => real height in this device
double getdh(double h) {
  return SizeConfig().getdw(h);
}
// design fontsize(pt/dp) => real fontsize in this device
double getfont(double fontsize) {
  return SizeConfig().getfont(fontsize);
}