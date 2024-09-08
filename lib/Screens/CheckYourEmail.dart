


import 'package:flutter/material.dart';
import 'package:online_kachahari/Screens/LoginPage.dart';

class CheckYourEmail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CheckYourEmailState();
  }

}

class CheckYourEmailState extends State<CheckYourEmail>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Check Your Email',style: TextStyle(color: Colors.white),)),
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
                  child: Icon(Icons.email_rounded,color: Colors.purple,size:40,),
                ),
                SizedBox(height: 15,),
                Text('Check your email',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                SizedBox(height: 15,),
                Text('We sent a password reset link to email',style: TextStyle(),),
                Center(child: Text(' sashutosh186@gmail.com')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        minimumSize:Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: (){

                    }, child: Center(child: Text('Open email app',style: TextStyle(color: Colors.white),))
                ),
                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){
                     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginPage(),), (route)=>false);
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