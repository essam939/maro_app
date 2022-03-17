import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maroapp/home_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GlowCircle();
  }
}

class _GlowCircle extends State<SplashScreen> {
   go(){
    Future.delayed(const Duration(seconds: 1),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>HomePage()), (route) => false);
    });
  }
  @override
  void initState() {
    super.initState();
    go();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/1.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:EdgeInsets.all(20),
                alignment:Alignment.center,
                height:300,
                child:Container(
                  decoration: const BoxDecoration(
                      shape:BoxShape.circle,
                 image: DecorationImage(image: AssetImage("assets/images/maro.jpg"))
                  ),
                  height:200,
                  width: 200,
                ),
              ),
              SizedBox(height: 10,),
              Text("MARO ESSAM",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),)
            ],
          ),
        ),
      ),
    );
  }
}