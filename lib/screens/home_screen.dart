import 'package:flutter/material.dart';
import 'package:script/components/elevated_buttons.dart';
import 'package:script/screens/answer_script.dart';
import 'package:script/screens/evaluvation_scheme.dart';
import 'package:script/screens/result_page.dart';

class HomeScreen  extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen > createState() => _HomeScreen ();
}

class _HomeScreen  extends State<HomeScreen > {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold (
      body:Center(
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[ 
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
            ),
        ElevatedButtons(onPressed: (){
          Navigator.push(
           context,
           MaterialPageRoute(builder:(context)=>AnswerScript()
           ),
           );
        },text: 'ANSWER SCRIPT',bgcolor:Colors.grey[350]),
        SizedBox(height: 20),
        ElevatedButtons(onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context)=> EvaluvationSchema()
           ),
           );
        },text: 'EVALUVATION SCHEME',bgcolor:Colors.grey[350]),
         SizedBox(height: 20),
        ElevatedButtons(onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>  Result()
          ),
          );
        },text: 'RESULT',bgcolor:Colors.grey[350]),
         SizedBox(height: 30),
          Image.asset(
              'assets/images/crysta logo.png',
              width: 250, 
              height: 250, 
            ),
        
        ],
      ),
        ),
      ),
    
    );
  }
}