import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_nbs/view_model/test_view_model.dart';

class TesNBS extends StatefulWidget {
  const TesNBS({Key? key}) : super(key: key);

  @override
  State<TesNBS> createState() => _TesNBSState();
}

class _TesNBSState extends State<TesNBS> {
  @override
  Widget build(BuildContext context) {
    var _getdata = Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Tes NBS",
          style: TextStyle(color: Colors.greenAccent),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: _getdata.validationString.value,
              decoration: InputDecoration(
                labelText: "Enter String",
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _getdata.validchar(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent,
              ),
              child: Text("Check Valid String",
                  style: TextStyle(
                      color: Colors.blueGrey
                  ))),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: _getdata.shift.value,
              decoration: InputDecoration(
                labelText: "Enter Shift How Many Times",
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _getdata.shiftdata();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent,
              ),
              child: Text("Shift Now",
                  style: TextStyle(
                      color: Colors.blueGrey
                  ))),
          Text("${_getdata.dataShift}"),
          SizedBox(height: 10),
          Obx(() {
            return Text("${_getdata.dataShiftDone}");
          }),
        ],
      ),
    );
  }
}
