import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sapper/Field.dart';
import 'package:sapper/WidgetField.dart';
import 'package:sapper/WidgetRowSell.dart';
import 'package:sapper/WidgetSell.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(),
        body: new WidgetField(),
      )));

  // List list = Field.field;
  // Field.fieldFilling(list);
  // Field.countMins(list);
  // Field.printList(list);
}
