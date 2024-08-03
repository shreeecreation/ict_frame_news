import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.titleStyle,
      required this.subtitleStyle,
      this.gap = 10.0,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.textAlign = TextAlign.left});

  final String title;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final String subTitle;
  final double gap;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(
          title,
          style: titleStyle,
          textAlign: textAlign,
        ),
        gap.verticalSpace,
        Text(
          subTitle,
          style: subtitleStyle,
          textAlign: textAlign,
        )
      ],
    );
  }
}
