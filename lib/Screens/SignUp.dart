
import 'package:flutter/material.dart';
import 'package:online_kachahari/Screens/LoginPage.dart';

class SignUp extends StatefulWidget{

  @override
  State<SignUp> createState() {
    return SignUpState();

  }

}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
        title: Center(child: Text('Sign Up',style: TextStyle(color: Colors.white),)),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 300,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign up',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),SizedBox(height: 11,),
                  Text('Create your account'),SizedBox(height: 11,),
                  TextFormField(
                    decoration: InputDecoration(
                      focusColor: Colors.cyan,
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                      )
                    ),
                  ),
                  SizedBox(height: 11,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                      )
                    ),
                  ),
                  SizedBox(height: 11,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.password_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                      )
                    ),  
                  ),
                  SizedBox(height: 11,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.password_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                      )
                    ),
                  ),SizedBox(height: 11,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 50),
                        backgroundColor: Colors.purple
                      ),
                      onPressed: (){}, child: Center(child: Text('Sign up',style:TextStyle(color: Colors.white) ,))
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account ?'),
                      TextButton(onPressed: (){
                        Navigator.pop(context, MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        },));
                      }, child: Text('Login',style: TextStyle(color: Colors.purple),))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}