import 'package:flutter/material.dart';

class ShortlyDialogModal {
  Widget child;
  BuildContext context;
  Color barrierColor;
  Duration duration;
  Widget animatedWidget;
  ShortlyDialogModal(
      {this.context,
      this.child,
      this.barrierColor,
      this.duration,
      this.animatedWidget});

  void call() {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Lab",
      barrierColor: barrierColor ?? Colors.black.withOpacity(0.3),
      transitionDuration: duration ?? Duration(milliseconds: 100),
      context: context,
      pageBuilder: (_, __, ___) => Material(
        color: Colors.transparent,
        child: AlertDialog(
          backgroundColor: Theme.of(context).cardColor,
          titlePadding: EdgeInsets.all(15),
          title: Container(height: 300, child: child),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
        ),
      ),
      transitionBuilder: (_, anim, __, child) =>
          animatedWidget ??
          SlideTransition(
            position:
                Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
            child: child,
          ),
    );
  }
}
