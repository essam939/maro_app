import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController one = TextEditingController();
  TextEditingController five = TextEditingController();
  TextEditingController ten = TextEditingController();
  TextEditingController twenty = TextEditingController();
  TextEditingController fifty = TextEditingController();
  TextEditingController oneHundred = TextEditingController();
  TextEditingController twoHundred = TextEditingController();
  TextEditingController oneThousand = TextEditingController();
 int  vone = 0;
 int  vfive = 0;
 int  vten = 0;
  int vtwenty = 0;
  int vfifty = 0;
  int voneHundred = 0;
 int  vtwoHundred = 0;
 int  voneThousand = 0;
  int total = 0;

  @override
  void dispose() {
    one.dispose();
    five.dispose();
    ten.dispose();
    twenty.dispose();
    fifty.dispose();
    oneHundred.dispose();
    twoHundred.dispose();
    oneThousand.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Maro Essam"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildContainer(one, "1"),
                      buildContainer(five, "5"),
                      buildContainer(ten, "10"),
                      buildContainer(twenty, "20"),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildContainer(fifty, "50"),
                      buildContainer(oneHundred, "100"),
                      buildContainer(twoHundred, "200"),
                    ],
                  ),
                  Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildContainer(oneThousand, "1000"),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width:200,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  "${total}",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                )),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("C",style: TextStyle(fontSize: 30),),
        onPressed: (){
          one.clear();
          five.clear();
          ten.clear();
          twenty.clear();
          fifty.clear();
          oneHundred.clear();
          twoHundred.clear();
          oneThousand.clear();
          setState(() {
            total=0;
            vone = 0;
            vfive = 0;
            vten = 0;
            vtwenty = 0;
            vfifty = 0;
            voneHundred = 0;
            vtwoHundred = 0;
            voneThousand = 0;
          });
        },
      ),
    );
  }

  Container buildContainer(TextEditingController ctr, title,) {
    return Container(
        width: 90,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: ctr,
            onChanged: (vale) {
              print("kkkkkkkkk $vale");
              setState(() {
                if(ctr.text.isEmpty){
                  vale="0";
                }
                switch (title){
                  case "1":vone=int.parse(vale)*1;
                  break;
                  case "5":vfive=int.parse(vale)*5;
                  break;
                  case "10":vten=int.parse(vale)*10;
                  break;
                  case "20":vtwenty=int.parse(vale)*20;
                  break;
                  case "50":vfifty=int.parse(vale)*50;
                  break;
                  case "100":voneHundred=int.parse(vale)*100;
                  break;
                  case "200":vtwoHundred=int.parse(vale)*200;
                  break;
                  case "1000":voneHundred=int.parse(vale)*1000;
                }
                total=vone+vfive+vten+vtwenty+vfifty+voneHundred+vtwoHundred+voneHundred;
              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 18.0),
              labelText: title,
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  )),
           ),
          ),
        ));
  }
}
