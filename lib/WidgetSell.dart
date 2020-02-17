import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapper/Field.dart';

import 'WigetEmptySell.dart';

class WidgetSell extends StatefulWidget {
  int _coordinateX;
  int _coordinateY;
  List list;
  List listW;
  bool stateSell;
  @override
  _WidgetSellState createState() =>
      _WidgetSellState(_coordinateX, _coordinateY, list, listW, stateSell);

  WidgetSell(this._coordinateX, this._coordinateY, this.list, this.listW,
      this.stateSell);
}

class _WidgetSellState extends State<WidgetSell> {
  bool stateSell = false;
  Widget _widgetEmpty;
  int _coordinateX;
  int _coordinateY;
  List list;
  List listW;
  int _quantityMine;

  _WidgetSellState(this._coordinateX, this._coordinateY, this.list, this.listW,
      this.stateSell);

  @override
  Widget build(BuildContext context) {
    quantityMine();
    if (stateSell == false) {
      _widgetEmpty = Container(
          height: 50,
          width: 50,
          child: new RaisedButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                swap();
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    border: Border.all(color: Colors.white)),
              )));
    }
    if (stateSell == true && _quantityMine != 9 && _quantityMine != 0) {
      _widgetEmpty = WigetEmptySell(_quantityMine);
    }
    if (stateSell == true && _quantityMine == 0) {
      _widgetEmpty = Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
      );
    }
    if (stateSell == true && _quantityMine == 9)
      _widgetEmpty = Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      );

    return _widgetEmpty;
  }

  quantityMine() {
    if (list[_coordinateX][_coordinateY].content.name == "Empty") {
      _quantityMine = list[_coordinateX][_coordinateY].content.quantityMine;
    } else {
      _quantityMine = 9;
    }
  }

  swap() {
    setState(() {
      if (_quantityMine == 0) {
        listW[2][2].stateSell = true;
        ;
      }
      stateSell = !stateSell;
    });
  }
}
