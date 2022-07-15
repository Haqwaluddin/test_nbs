import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_nbs/model/data.dart';

class TestController extends GetxController{

 var validationString = TextEditingController().obs;
 var shift = TextEditingController().obs;
 var dataShift= [1,2,3,4,5,6,7];
 var dataShiftDone= [].obs;

  void validchar(context) {
    var listdup = [];
    var input = validationString.value.text.toLowerCase().split('');
    var list1 = input.toSet().toList();
    var myMap = Map<String, int>.fromIterables(list1, List.generate(list1.length, (i) => 0));
    input.forEach((e) => myMap[e] = myMap[e]! + 1);
    var list = myMap.entries.map((e) => Data(e.key, e.value)).toList();
    for(var i=0;i<list.length;i++){
      print(list[i].jumlah);
      listdup.add(list[i].jumlah);
    };
    print(listdup);
    print(listdup.toSet());
    print("list data ${listdup.toSet().length}");

    if(listdup.toSet().length>1) {
      Flushbar(
        flushbarPosition: FlushbarPosition.TOP,
        message: "String Not Valid",
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
      )..show(context);
    } else {
      Flushbar(
        flushbarPosition: FlushbarPosition.TOP,
        message: "Valid String",
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
      )..show(context);
      print("Valid String");
    }
  }


  void shiftdata(){
    dataShiftDone.value = [];
    rotate(dataShift, int.parse(shift.value.text));
    dataShiftDone.addAll(rotate(dataShift, int.parse(shift.value.text)));
  }

    List<Object> rotate(List<Object> list, int v) {
      var i = v % list.length;
      return list.sublist(i)..addAll(list.sublist(0, i));
    }
}

// class Data {
//   String key;
//   int jumlah;
//   Data(this.key, this.jumlah);
//   @override
//   String toString() {
//     return '{ ${this.key}, ${this.jumlah} }';
//   }
// }