import 'package:flutter/material.dart';
class Module9Class2 extends StatelessWidget {
   const Module9Class2({super.key});

   @override
   Widget build(BuildContext context) {
     return DefaultTabController(
       length: 3,
       child: Scaffold(
         appBar: AppBar(
           title: Text("Module 9 class 2"),
           bottom: TabBar(tabs: [
             Tab(
                 icon: Icon(Icons.home),
                 text: 'Home'
             ) ,
             Tab(
                 icon: Icon(Icons.star),
                 text: 'Favourite'
             ),
             Tab(
                 icon: Icon(Icons.settings),
                 text: 'Setting'
             )
           ]
           )
         ),

         drawer: Drawer(
           child: ListView(
             children: [
               DrawerHeader(child: Column(
                 children: [
                   CircleAvatar(
                     radius:42,

                     backgroundImage: NetworkImage('https://cdn.ostad.app/user/avatar/2025-05-11T13-24-14.723Z-1746777258723.jpg'),
                   ),
                   SizedBox(height: 10,),
                   Text('Sujon Kumar',
                     style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   Text('sujonkumar0808@gmail.com',
                     style: TextStyle(
                       fontSize: 10

                     ),
                     ),
                 ],
               ),
               ),
               ListTile(
                 leading: const Icon(Icons.home),
                 title: Text('Home',style:
                   TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){
                   Navigator.pop(context);
                 },
               ),

               ListTile(
                 leading: const Icon(Icons.drive_file_move_sharp),
                 title: Text('My Files',style:
       TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},
               ),

               ListTile(
                 leading: const Icon(Icons.people),
                 title: Text('Shared with me',style:
                 TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},
               ),

               ListTile(
                 leading: const Icon(Icons.favorite),
                 title: Text('Starred',style:
                 TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},
               ),

               ListTile(
                 leading: const Icon(Icons.access_time_rounded),
                 title: Text('Recent',style:
                 TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},
               ),

               ListTile(
                 leading: const Icon(Icons.offline_pin),
                 title: Text('Offline',style:
                 TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},
               ),

               ListTile(
                 leading: const Icon(Icons.upload),
                 title: Text('Upload',style:
                 TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},
               ),

               ListTile(
                 leading: const Icon(Icons.backup),
                 title: Text('Backup',style:
                 TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},


               ),
                Divider(thickness: 1,indent: 16, endIndent: 16
                ),
               ListTile(

                 leading: const Icon(Icons.settings),
                 title: Text('Setting',style:
                 TextStyle(fontWeight: FontWeight.bold),),
                 onTap: (){},
               ),

             ],
           ),
         ),

       ),
     );
   }
 }
