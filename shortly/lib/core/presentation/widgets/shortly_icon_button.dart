import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShortlyIconButton extends StatefulWidget {
  Function onTap;
  String iconPath;
  ShortlyIconButton({Key key, this.onTap, this.iconPath}) : super(key: key);
  @override
  _ShortlyIconButtonState createState() => _ShortlyIconButtonState();
}

class _ShortlyIconButtonState extends State<ShortlyIconButton> {
  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 18,
          width: 25,
          child: GestureDetector(
            onTap: () => widget.onTap(),
            child: SvgPicture.asset(
              widget.iconPath,
            ),
          ),
        ),
      );
}
