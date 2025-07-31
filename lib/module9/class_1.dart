
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert extends StatelessWidget{
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {

    void showAlertDialog(){
      showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
        title: Text('This is title'),
        content: Text('Are you sure'),
        actions: [

          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
          ElevatedButton(onPressed: (){}, child: Text('Submit'))
        ],
      ));

    }

    void showAlertDialogIcon(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text("Instalition block"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning,color: Colors.red,size: 40,),
               SizedBox(width: 5,),
                Text('Warning')
              ],
            ),
            SizedBox(height: 10,),
            Text("An unknown issue occurred while trying to complete your action. This may be due to a temporary glitch or a connectivity problem. Please try again in a few minutes, or contact support if the issue persists.",
            style: TextStyle(
              color: Colors.blueGrey
            ),
            )
          ],
        ),
      ));

    }

    void showSimpleDialog(){

      showDialog(context: context, builder: (context)=>SimpleDialog(
        
        title: Text('Chose Sim',textAlign:TextAlign.center,),
        children: [
       SimpleDialogOption(
         child:TextButton(onPressed: (){
           Navigator.pop(context);
         }, child: Text('SIM 1',textAlign:TextAlign.end,))
       ),

          SimpleDialogOption(
            child:TextButton(onPressed: (){}, child:Text('SIM 2',textAlign:TextAlign.end,))
          ),


        ],
      ));

    }
   return Scaffold(
     appBar: AppBar(
       title: Text('Alert'),

     ),
     body: Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         ElevatedButton(onPressed: (){
           showAlertDialog();
         }, child: Text("Alert button")),

         ElevatedButton(onPressed: (){
          showAlertDialogIcon();
         }, child: Text("Alert with icon")),
         
         ElevatedButton(onPressed: (){
           showSimpleDialog();
         }, child: Text('Simple dialog'))
       ],
     ),
     ),
   );
  }

}