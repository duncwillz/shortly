import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShortlyButton extends StatefulWidget {
  Function onTap;
  double width;
  double height;
  String title;
  Color textColor;
  Color buttonColor;
  ShortlyButton(
      {Key key,
      this.title,
      this.textColor,
      this.onTap,
      this.buttonColor,
      this.height,
      this.width})
      : super(key: key);
  @override
  _ShortlyButtonState createState() => _ShortlyButtonState();
}

class _ShortlyButtonState extends State<ShortlyButton> {
  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          width: widget.width ?? double.infinity,
          height: widget.height ?? 49,
          color: widget.buttonColor ?? Theme.of(context).primaryColor,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => widget.onTap(),
              child: Center(
                child: Text(
                  widget.title ?? "",
                  style: TextStyle(
                      color: widget.textColor ?? Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
      );
}
