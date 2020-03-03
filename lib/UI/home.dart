
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercent =0;
  int _personCounter =1;
  double billAmount =0.0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1), // use this to calculate the height of device and place widgets percentage wise
          alignment: Alignment.center,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(20.5),
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade400,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Total Per Person"),
                    Text("\$231132312") // \ is an escape character

                  ],
                ),
              )
            ],
          ),

        )
    );
  }
}




