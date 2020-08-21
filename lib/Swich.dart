import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwichOrCheckBox extends StatefulWidget {
  @override
  State createState() {
    return _SwichOrCheckbox();
  }
}

class _SwichOrCheckbox extends State<SwichOrCheckBox> {
  bool _value1 = true;
  bool _value2 = true;
  bool _value3 = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Switch(
          value: _value1,
          onChanged: (value) {
            print(value);
            this._value1 = value;
          },
        ),
        Checkbox(
          value: _value2,
          onChanged: (value){
            this._value2 = value;
          },
        ),
        Checkbox(
          value: _value3,
          onChanged: (value){
            this._value3 = value;
          },
        ),
      ],
    );
  }
}
