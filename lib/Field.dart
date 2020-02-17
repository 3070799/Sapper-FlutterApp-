import 'dart:math';

import 'package:sapper/Empty.dart';
import 'package:sapper/Mine.dart';
import 'package:sapper/Sell.dart';
import 'package:sapper/WidgetSell.dart';

class Field {
  static var field = new List.generate(8, (_) => new List(8));

  static List fieldFilling(List list) {
    var random = new Random();

    for (var i = 0; i < list.length; i++) {
      for (var n = 0; n < list[i].length; n++) {
        list[i][n] =
            new Sell(name: "$i - $n", content: new Empty(sell: list[i][n]));
      }
    }

    for (var i = 0; i < 10; i++) {
      var x = random.nextInt(list.length);
      var y = random.nextInt(list.length);
      if (list[x][y].content.name == "Empty") {
        list[x][y].content = new Mine(sell: list[x][y]);
      } else {
        i--;
      }
    }

    return list;
  }

  static List countMins(List list) {
    int count;
    for (var i = 0; i < list.length; i++) {
      for (var n = 0; n <= list.length - 1; n++) {
        count = 0;

        if (list[i][n].content.name == "Empty" && i == 0 && n == 0) {
          if (list[i][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n + 1].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            i == 0 &&
            n == list.length - 1) {
          if (list[i][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n - 1].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            i == list.length - 1 &&
            n == 0) {
          if (list[i][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            i == list.length - 1 &&
            n == list.length - 1) {
          if (list[i][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n - 1].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            n != 0 &&
            n != list[i].length - 1 &&
            i == 0) {
          if (list[i][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i][n + 1].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            n != 0 &&
            n != list[i].length - 1 &&
            i == list.length - 1) {
          if (list[i][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i][n + 1].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            i != 0 &&
            i != list.length - 1 &&
            n == 0) {
          if (list[i - 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            i != 0 &&
            i != list.length - 1 &&
            n == list[i].length - 1) {
          if (list[i - 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
        if (list[i][n].content.name == "Empty" &&
            i != 0 &&
            n != 0 &&
            i != list.length - 1 &&
            n != list[i].length - 1) {
          if (list[i - 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n - 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n].content.name == "Mine") {
            count++;
          }
          if (list[i - 1][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i][n + 1].content.name == "Mine") {
            count++;
          }
          if (list[i + 1][n + 1].content.name == "Mine") {
            count++;
          }
          list[i][n].content.quantityMine = count;
        }
      }
    }

    return list;
  }

  static void printList(List list) {
    String s;
    for (var i = 0; i < list.length; i++) {
      s = '';
      for (var n = 0; n < list[i].length; n++) {
        if (list[i][n].content.name == "Mine") {
          s = '$s' + list[i][n].content.name + '|';
        }
        if (list[i][n].content.name == "Empty") {
          s = '$s  ' + list[i][n].content.quantityMine.toString() + ' |';
        }

        // print(list[i][n].name);
        // print(list[i][n].content.name);

      }
      print(s);
    }
  }
}
