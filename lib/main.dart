import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
double currentHeight = 160;
double height = 160;
double age = 20;
double weight = 60;
bool? isMale ;
double equation=0;
String? result;
String? text;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:FirstScreen() ,
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xFF1F1B31),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            //Male & Female
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Male

                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: isMale!= null &&(isMale!)? Colors.purple : Color(0xFF1F1B31),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 70,
                          ),
                          SizedBox(height: 10,),
                          Text("Male",
                            style: TextStyle(fontSize: 25, color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                //Female

                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = false;
                      });
                      print("Female");
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: isMale!= null && (isMale! == false )? Colors.purple : Color(0xFF1F1B31),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Female",
                            style: TextStyle(fontSize: 25, color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            //height
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:Color(0xFF1F1B31),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(currentHeight.toInt().toString() ,
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                      Text(" cm",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
                  Slider(
                      min: 50,
                      max: 250,
                      value:currentHeight ,
                      activeColor: Colors.purple,
                      onChanged: (double value){
                        setState(() {
                          currentHeight = value;
                        });
                        print(value);
                      }),
                ],
              ),
            ),
            SizedBox(height: 20,),
            //Age & Weight
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Age
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age",
                            style: TextStyle(fontSize: 18, color: Colors.white)),
                        SizedBox(height: 10,),
                        Text(age.toInt().toString(),
                          style: TextStyle(fontSize: 25, color: Colors.white),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.purple,
                                child: Icon(CupertinoIcons.minus)
                                , onPressed: (){
                              setState(() {
                                --age;
                              });
                            }),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                                backgroundColor: Colors.purple,
                                child: Icon(CupertinoIcons.add)
                                , onPressed: (){
                              setState(() {
                                ++age;
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF1F1B31),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                //Weight

                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight",
                            style: TextStyle(fontSize: 18, color: Colors.white)),
                        SizedBox(height: 10,),
                        Text(weight.toInt().toString(),
                          style: TextStyle(fontSize: 25, color: Colors.white),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.purple,
                                child: Icon(CupertinoIcons.minus)
                                , onPressed: (){
                              setState(() {
                                --weight;
                              });

                            }),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                                backgroundColor: Colors.purple,
                                child: Icon(CupertinoIcons.add)
                                , onPressed: (){
                              setState(() {
                                ++weight;
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                    width: 140,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF1F1B31),
                        borderRadius: BorderRadius.circular(20)
                    ),

                  ),
                )
              ],
            ),
          ],
        ),
      ),

      bottomSheet: GestureDetector(
        onTap: (){
          setState(() {
            height=currentHeight/100;
            equation= weight/(height*height);
            print(weight);
            print(currentHeight);
            print(equation);
            if(equation! < 18.5){
              result= "Under Weight";
              text="You have a lower than normal body weight. Try eating more, but make sure it's a healthy diet.";
            }
            else if(equation >= 18.5 && equation < 25){
              result= "Normal";
              text="You have a normal body weight. Good Job!";
            }
            else if(equation >= 25 && equation < 30){
              result= "Over Weight";
              text="You have a higher than normal body weight. Try to exercise more.";
            }
            else{
              result="obese";
              text= "You need a serious help! Go to doctor and start a healthy diet.";
            }
          });
          if(isMale != null){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> SecondScreen()));
          }
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Center(
            child: Text(
              "Calculate", style: TextStyle(
              color: Colors.white,fontSize: 22,
            ),
            ),
          ),
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xFF1F1B31),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Your Result ",
                style: TextStyle(fontSize: 40, color: Colors.white)),
            SizedBox(height: 20,),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:Color(0xFF1F1B31),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(

                  children: [
                    SizedBox(height: 20,),
                    Text( result!,
                        style: TextStyle(fontSize: 28, color: Colors.purple)),
                    SizedBox(height: 20,),
                    Text(equation.toStringAsFixed(2),
                        style: TextStyle(fontSize: 50, color: Colors.white)),
                    SizedBox(height: 50,),
                    Text(text!,
                        style: TextStyle(fontSize: 25, color: Colors.white),textAlign: TextAlign.center,),
                  ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> FirstScreen()));
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Center(
            child: Text(
              "Re-calculate", style: TextStyle(
              color: Colors.white,fontSize: 22,
            ),
            ),
          ),
        ),
      ),
    );
  }
}
