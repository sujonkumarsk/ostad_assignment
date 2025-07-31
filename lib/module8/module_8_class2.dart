import 'package:flutter/material.dart';

class module8class2 extends StatelessWidget {
   module8class2({super.key});

  final _formkey=GlobalKey<FormState>();
  TextEditingController phoneController =TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('module 8 class 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Center(
            child:  Image.network(
                'https://tse4.mm.bing.net/th/id/OIP.KCzWnbfabdUUli4v25y-_AHaEK?cb=thvnextc2&rs=1&pid=ImgDetMain&o=7&rm=3',
                height: 50,width: 150
            ),
          ),
          Image.asset('asset/R.png',width: 150,
          ),
          Text('Login with phone and password',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          ),
          SizedBox(height: 10,),
          Form(
            key: _formkey,
            child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [

                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  validator:(value){
                    if(value==null || value.isEmpty){
                      return 'please enter your number';
                    }
                    else if(value.length !=11){
                      return'enter correct phone number';
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  validator: (value){
                    if(value==null ||value.isEmpty){
                      return 'please enter password';
                    }else if(value.length<=6){
                      return'please  enter at least 6 charecter password';
                    }
                    else{
                      return null;
                    }
                  }

                ),
               SizedBox(
                 width: 300,
                 child:  ElevatedButton(onPressed: (){
                   if(_formkey.currentState!.validate()){
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text('Login Successful'))
                     );
                   }
                 }, child: Text('Login')),
               )
              ],
            ),
          ),
          ),
        ],
      ),
      ),
    );
  }
}
