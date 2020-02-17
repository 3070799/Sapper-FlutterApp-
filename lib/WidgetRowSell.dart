import 'package:flutter/cupertino.dart';
import 'package:sapper/WidgetSell.dart';

class WidgetRowSell extends StatelessWidget {
  int _coordinateX;
  int _coordinateY = 0;
  List _list;
  List _listW;

  WidgetRowSell(this._coordinateX,this._list,this._listW);
  
  @override
  Widget build(BuildContext context) {
    _coordinateY = 0;

    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Row(children: <Widget>[_listW[_coordinateX][_coordinateY++],
            _listW[_coordinateX][_coordinateY++]
            ]),
            Row(children: <Widget>[_listW[_coordinateX][_coordinateY++],
            _listW[_coordinateX][_coordinateY++]
            ])
          ],
        ),
        Row(
          children: <Widget>[
            Row(children: <Widget>[_listW[_coordinateX][_coordinateY++],
            _listW[_coordinateX][_coordinateY++]
            ]),
            Row(children: <Widget>[_listW[_coordinateX][_coordinateY++],
            _listW[_coordinateX][_coordinateY++]
            ])
        ],)
      ],
    );
    

  }
}