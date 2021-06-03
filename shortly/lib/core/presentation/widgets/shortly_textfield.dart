import 'package:flutter/material.dart';

class ShortlyTextField extends StatelessWidget {
  final TextInputType inputType;
  final TextEditingController controller;
  final double textSize;
  final double height;
  final double width;
  final double borderWidth;
  final bool hasError;
  final String errorMessage;
  final FocusNode focusNode;
  final String prefixText;
  final String hint;
  final Color textColor;
  final bool hasFocus;
  final bool enabled;
  final Function(String) onChanged;
  const ShortlyTextField(
      {Key key,
      @required this.controller,
      this.hasError = false,
      this.prefixText,
      this.width,
      this.height,
      this.focusNode,
      this.inputType = TextInputType.text,
      this.borderWidth = 1.0,
      this.textSize = 16.0,
      this.hint,
      this.errorMessage,
      this.hasFocus = false,
      this.enabled = true,
      this.onChanged,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Container(
            width: width ?? double.infinity,
            height: height ?? 49,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
            child: Center(
              child: TextFormField(
                textAlign: TextAlign.center,
                focusNode: focusNode ?? DisableFocus(),
                controller: controller,
                autofocus: hasFocus,
                enabled: enabled,
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: textSize,
                ),
                onChanged: onChanged ?? (_) {},
                keyboardType: inputType,
                decoration: InputDecoration(
                    hintText: hasError ? errorMessage : hint ?? "",
                    hintStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 16,
                        color: hasError ? Colors.red : Colors.grey),
                    contentPadding: const EdgeInsets.all(14),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: hasError
                            ? Colors.red
                            : Theme.of(context).accentColor,
                        width: 1.4,
                        style: BorderStyle.solid,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: hasError
                            ? Colors.red
                            : Theme.of(context).accentColor,
                        width: 1.4,
                        style: BorderStyle.solid,
                      ),
                    )),
              ),
            ),
          )
        ],
      );
}

class DisableFocus extends FocusNode {
  @override
  bool consumeKeyboardToken() => false;
}
