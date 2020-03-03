
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
          alignment: Alignment.center,
          color: Colors.white,

        )
    );
  }
}




