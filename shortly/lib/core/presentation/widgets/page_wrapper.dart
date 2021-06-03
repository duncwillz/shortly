import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shortly/core/platform/app_image.dart';

class PageWrapper extends StatefulWidget {
  final Widget child;
  final bool showLogo;
  final Color backgroundColor;
  const PageWrapper(
      {Key key, this.child, this.backgroundColor, this.showLogo = true})
      : super(key: key);
  @override
  _PageWrapperState createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor:
            widget.backgroundColor ?? Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (widget.showLogo) ...[
                  const SizedBox(height: 55),
                  Center(child: SvgPicture.asset(AppImage.logo)),
                ],
                Expanded(child: widget.child)
              ],
            ),
          ),
        ),
      );
}
