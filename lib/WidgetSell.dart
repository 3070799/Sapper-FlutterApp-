import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetSell extends StatefulWidget {
  @override
  _WidgetSellState createState() => _WidgetSellState();
}

class _WidgetSellState extends State<WidgetSell> {

bool stateSell = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
      
    ),
    child: new RaisedButton(
      color: Colors.black45,
      
      onPressed: (){},
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white
          )        
      ),
      ),
      )
    );
    
  }
}