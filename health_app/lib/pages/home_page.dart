import 'package:flutter/material.dart';

import '../util/emotions.dart';
import '../util/widgets.dart';
class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
            children: [
              SizedBox(height: 7,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Column(
                 children: [
                   // Greetings row
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       // Hi jarred
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(('Hi, Jarred!'),
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 26,
                             ),
                           ),
                           SizedBox(height: 8,),
                           Text('23 Jan 2021',
                             style: TextStyle(color: Colors.blue[200]),
                           ),
                         ],
                       ),
                       // Notification
                       Container(
                         decoration: BoxDecoration(
                             color: Colors.blue[600],
                             borderRadius: BorderRadius.circular(12)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(13.0),
                           child: Icon(Icons.notifications,
                             color: Colors.white,),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20,),

                   // Search bar
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.blue[600],
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                         children: [
                           Icon(Icons.search
                             ,color: Colors.white,
                             weight: 10,),
                           SizedBox(width: 5,),
                           Text('Search',
                             style: TextStyle(
                               color: Colors.white,
                             ),),
                         ],
                       ),
                     ),
                   ),
                   // Emotions
                   SizedBox(
                     height: 35,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('How do you feel?',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),),
                       Icon(Icons.more_horiz,
                         color: Colors.white,)
                     ],
                   ),
                   SizedBox(
                     height: 25,
                   ),
                   // 4 diffferent faces of emotions emojis
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Column(
                         children: [
                           emotions(
                             emotionsface: '😌',
                           ),
                           SizedBox(height: 9,),
                           Text('Bad',
                             style: TextStyle(
                               color: Colors.white,
                             ),),
                         ],
                       ),
                       SizedBox(
                         width: 5,
                       ),

                       Column(
                         children: [
                           emotions(
                             emotionsface: '😁',
                           ),
                           SizedBox(height: 9,),
                           Text('Fine',
                             style: TextStyle(
                               color: Colors.white,
                             ),),
                         ],
                       ),
                       SizedBox(
                         width: 5,
                       ),

                       Column(
                         children: [
                           emotions(
                             emotionsface: '🤗',
                           ),
                           SizedBox(height: 9,),
                           Text('Well',
                             style: TextStyle(
                               color: Colors.white,
                             ),),
                         ],
                       ),
                       SizedBox(
                         width: 5,
                       ),

                       Column(
                         children: [
                           emotions(
                             emotionsface: '🥳',
                           ),
                           SizedBox(height: 9,),
                           Text('Excellent',
                             style: TextStyle(
                               color: Colors.white,
                             ),),
                         ],
                       ),
                     ],
                   ),
                 ],
               ),
             ),
              SizedBox(
                height: 25,
              ),
              Expanded(child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Excercises',
                          style: TextStyle(
                            decorationColor: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                          Icon(Icons.more_horiz),
                        ],),
                      SizedBox(
                        height: 20,
                      ),
                      // list view of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            excersises(
                              icon: Icons.favorite,
                              tittlename: 'Speaking Skills',
                              subtittlename: 15 ,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            excersises(
                              icon: Icons.person,
                              tittlename: 'Reading Skills',
                              subtittlename: 8 ,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            excersises(
                              icon: Icons.star,
                              tittlename: 'Writing Skills',
                              subtittlename: 10 ,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ],
          ),
      ),
    );
  }
}
