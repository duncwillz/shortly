import 'package:flutter/material.dart';

class WalkthroughIndicator extends StatelessWidget {
  bool selected;
  WalkthroughIndicator({this.selected});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 6.0),
        child: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: selected ? Colors.grey : null,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 2.5)),
        ),
      );
}
