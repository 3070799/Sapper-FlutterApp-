import 'package:flutter/cupertino.dart';
import 'package:sapper/Field.dart';
import 'package:sapper/WidgetRowSell.dart';

import 'WidgetSell.dart';

class WidgetField extends StatelessWidget {
  int _coordinateX = 0;
  List _list = Field.countMins(Field.fieldFilling(Field.field));
  List _listW;

  @override
  Widget build(BuildContext context) {
    createListW();
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                WidgetRowSell(_coordinateX++, _list, _listW),
                WidgetRowSell(_coordinateX++, _list, _listW)
              ],
            ),
            Column(
              children: <Widget>[
                WidgetRowSell(_coordinateX++, _list, _listW),
                WidgetRowSell(_coordinateX++, _list, _listW)
              ],
            )
          ],
        ),
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                WidgetRowSell(_coordinateX++, _list, _listW),
                WidgetRowSell(_coordinateX++, _list, _listW)
              ],
            ),
            Column(
              children: <Widget>[
                WidgetRowSell(_coordinateX++, _list, _listW),
                WidgetRowSell(_coordinateX++, _list, _listW)
              ],
            )
          ],
        )
      ],
    );
  }

  List createListW() {
    var listW = new List.generate(8, (_) => new List(8));

    for (var i = 0; i < listW.length; i++) {
      for (var n = 0; n < listW[i].length; n++) {
        listW[i][n] = WidgetSell(i, n, _list, _listW, false);
      }
    }
    for (var i = 0; i < listW.length; i++) {
      for (var n = 0; n < listW[i].length; n++) {
        listW[i][n].listW = listW;
      }
    }
    _listW = listW;
  }
}
