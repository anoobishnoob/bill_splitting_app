
import 'package:bill_splitting_app/util/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercent =0;
  int _personCounter =1;
  double _billAmount =0.0;
  Color _purple = HexColor("#6908D6");



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
                  color: _purple.withOpacity(0.1),//Colors.purpleAccent.shade400,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Total Per Person"),
                    Text("\$231132312") // \ is an escape character

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.blueGrey.shade100,
                    style: BorderStyle.solid
                  ),
                    borderRadius: BorderRadius.circular(12)

                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: _purple.withOpacity(.7)),
                      decoration: InputDecoration(
                        prefixText: "Bill Amount",
                        prefixIcon: Icon(Icons.attach_money)
                      ),
                      onChanged: (String value){
                        try{
                          _billAmount = double.parse(value);

                        }catch(exception){
                          _billAmount =0.0;

                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Split", style: TextStyle(
                          color : Colors.grey.shade700
                        ),),
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if (_personCounter >1){
                                    --_personCounter;
                                  }else{
                                    // we actually don't need code here
                                  }
                                });
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: _purple.withOpacity(0.1)
                                ),
                                child: Center(
                                  child: Text(
                                    "-", style: TextStyle(
                                    color: _purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                  ),
                                  ),
                                ),
                              ),
                            ),
                            Text("$_personCounter", style: TextStyle(
                              color: _purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                            ),),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  ++_personCounter;

                                });
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: _purple.withOpacity(.1)
                                ),
                                child: Center(
                                  child: Text(
                                    "+", style: TextStyle(
                                      color: _purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                              ),

                            )
                          ],
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          ),

        )
    );
  }
}




