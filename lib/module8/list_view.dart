import 'package:flutter/material.dart';
class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context,index){
            return Card(
              child:ListTile(
              leading: Icon(Icons.phone),
                  trailing: Icon(Icons.delete,color: Colors.red,),
              title: Text('Sujon'),
              subtitle: Text('01795580585'),
            ),
            );
          })
    );

  }
}
