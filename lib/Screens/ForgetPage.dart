


import 'package:flutter/material.dart';
import 'package:online_kachahari/Screens/CheckYourEmail.dart';

class ForgetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ForgetPageState();
  }

}

class ForgetPageState extends State<ForgetPage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ForgetPassword',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple.shade50,
                  minRadius: 40,
                  child: Icon(Icons.key_outlined,color: Colors.purple,size:40,),
                ),
                SizedBox(height: 15,),
                Text('Forget passsword?',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                SizedBox(height: 15,),
                Text('Enter your email address Associated with',style: TextStyle(),),
                Center(child: Text(' your account')),
                SizedBox(height: 10,),
                TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_sharp),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  )
                ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      minimumSize:Size(100, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CheckYourEmail();
                    },));
                }, child: Center(child: Text('Reset password',style: TextStyle(color: Colors.white),))
                ),
                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.keyboard_backspace)),
                    SizedBox(width: 10,),
                    Text('Back to login'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

  }




}