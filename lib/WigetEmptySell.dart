import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WigetEmptySell extends StatelessWidget {
  int _quantityMine;

  WigetEmptySell(this._quantityMine);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "$_quantityMine",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
    );
  }
}
