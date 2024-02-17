import 'package:flutter/material.dart';
import 'package:script/components/app_bar.dart';
import 'package:script/components/elevated_buttons.dart';
import 'package:script/screens/home_screen.dart';

class AnswerScript extends  StatefulWidget {
  const AnswerScript({super.key});

  @override
  State<AnswerScript> createState() => _AnswerScript();
}

class _AnswerScript extends State< AnswerScript> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar:AppBars( text:'ANSWER SCRIPT', onPressed: () { 
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> HomeScreen()),
        );
       }),
       body: Center(
       child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            ),
          ElevatedButtons(onPressed: (){}, text:'EXAM',bgcolor:Colors.white, iconData: Icons.arrow_downward,),
           SizedBox(height: 20),
          ElevatedButtons(onPressed: (){},text: 'SUBJECT',bgcolor:Colors.white,iconData: Icons.arrow_downward,),

        ],
       ),
       ),
    );
  }
}