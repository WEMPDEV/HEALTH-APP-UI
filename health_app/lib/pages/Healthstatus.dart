import 'package:flutter/material.dart';

import '../util/emotions.dart';
import '../util/widgets.dart';
class Healthstatus extends StatefulWidget {
  const Healthstatus({super.key});

  @override
  State<Healthstatus> createState() => _HealthstatusState();
}

class _HealthstatusState extends State<Healthstatus> {
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
                        Text('Categories',
                          style: TextStyle(
                            decorationColor: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                        Icon(Icons.more_horiz),
                      ],),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildCategoryItem1(label: 'Relationship',),
                        SizedBox(width: 17,),
                        buildCategoryItem2(label: 'Carrier',),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildCategoryItem3(label: 'Education',),
                        SizedBox(width: 17,),
                        buildCategoryItem4(label: 'Other',),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Consultants',
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
                          Consultants(
                            icon: Icons.person,
                            tittlename: 'Bobby singer',
                            subtittlename: 'Education' ,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Consultants(
                            icon: Icons.person,
                            tittlename: 'Dean Winchenster',
                            subtittlename: 'Carrier' ,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Consultants(
                            icon: Icons.person,
                            tittlename: 'John Smith',
                            subtittlename: 'Relationship' ,
                            color: Colors.yellow,
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
