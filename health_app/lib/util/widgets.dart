import 'package:flutter/material.dart';
class excersises extends StatelessWidget {
  final icon;
  final String tittlename;
  final int subtittlename;
  final color;

  const excersises({
    Key ? key,
  required this.icon,
    required this.tittlename,
    required this.subtittlename,
    required this.color,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child:
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    color: Colors.orange,
                    child: Icon( icon,
                      color: color,),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // tittle
                    Text(
                      tittlename,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // subtitle
                    Text(subtittlename.toString() + 'Excercises',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}


class Consultants extends StatelessWidget {
  final icon;
  final String tittlename;
  final String subtittlename;
  final color;

  const Consultants({
    Key ? key,
    required this.icon,
    required this.tittlename,
    required this.subtittlename,
    required this.color,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child:
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    color: Colors.orange,
                    child: Icon( icon,
                      color: color,),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // tittle
                    Text(
                      tittlename,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // subtitle
                    Text(subtittlename,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}


class buildCategoryItem2 extends StatelessWidget {
  final String label;

  const buildCategoryItem2({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary, // Background color for the inner container
          borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 0, 0), // Red
            Color.fromARGB(255, 0, 0, 255), // Blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Lilita_one',
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class buildCategoryItem1 extends StatelessWidget {
  final String label;

  const buildCategoryItem1({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary, // Background color for the inner container
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(96, 125, 110, 50), // Red
            Color.fromARGB(55, 80, 0, 5), // Blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Lilita_one',
              fontSize: 17,
              fontWeight: FontWeight.w300,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}

class buildCategoryItem3 extends StatelessWidget {
  final String label;

  const buildCategoryItem3({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary, // Background color for the inner container
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 0, 0), // Red
            Color.fromARGB(255, 0, 0, 255), // Blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Lilita_one',
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class buildCategoryItem4 extends StatelessWidget {
  final String label;

  const buildCategoryItem4({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary, // Background color for the inner container
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 0, 0), // Red
            Color.fromARGB(255, 0, 0, 255), // Blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Lilita_one',
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}