import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue[800],
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Account & Settings',style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.blue,)),
                                IconButton(onPressed: (){
                                  Navigator.pushNamed(context, '/cart');
                                }, icon:const Icon(Icons.shopping_cart,color: Colors.blue,))
                              ],
                            )
                          ],
                        ),
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/logos/G logo.jpg'),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Welcome  Jarred!',style:
                        TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                        ),),
                        const Text('Jarred!@gmail.com',style:
                        TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w300,
                            fontSize: 20
                        ),),
                      ],
                    ),
                  ),
                ),
                const ListTile(
                    title: Text(
                      'My Mental Paddie',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    tileColor: Colors.white54
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child:
                  ListTile(
                      title: const Text(
                        'Inbox',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.mail_outline_sharp),
                      trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                      tileColor:Colors.grey[300],
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child:
                  ListTile(
                      title: const Text(
                        'Ratings & Reviews',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.rate_review_outlined),
                      trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                      tileColor:Colors.grey[300],
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child:
                  ListTile(
                      title: const Text(
                        'Consultants',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.person),
                      trailing: IconButton(onPressed: (){
                        Navigator.pushNamed(context, '/saved');
                      },icon: const Icon(Icons.navigate_next_sharp),),
                      tileColor:Colors.grey[300],
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child:
                  ListTile(
                      title: const Text(
                        'Recently Viewed Exercises',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.access_time_outlined),
                      trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                      tileColor: Colors.grey[300],
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child:
                  ListTile(
                      title: const Text(
                        'Recently Searched Exercises',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      leading: const Icon(Icons.search_off_outlined),
                      trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                      tileColor:Colors.grey[300],
                  ),
                  ),
                ),
                const ListTile(
                    title: Text(
                      'MY SETTINGS',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    tileColor: Colors.white54
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child:
                  ListTile(
                      title: const Text(
                        'Account Management',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                      tileColor: Colors.grey[300],
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child:
                  ListTile(
                      title: const Text(
                        'Close Account',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(onPressed: (){},icon: const Icon(Icons.navigate_next_sharp),),
                      tileColor: Colors.grey[300],
                  ),
                  ),
                ),
                ListTile(
                    title: TextButton(onPressed: (){
                      Navigator.pushNamed(context, '/logout');
                    }, child: const Text(
                      'LOG OUT',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )),
                    tileColor: Colors.white54
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
