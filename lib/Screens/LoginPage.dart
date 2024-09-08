

import 'package:flutter/material.dart';
import 'package:online_kachahari/Custom/Alerts.dart';
import 'package:online_kachahari/Screens/ForgetPage.dart';
import 'package:online_kachahari/Screens/SignUp.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState ();
  }


}

class _LoginPageState extends State<LoginPage> {

  final formfield = GlobalKey<FormState>();
  var EmailContoller = TextEditingController();
  var PassContoller = TextEditingController();
  var _result ='';
  bool passToggle =true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login Page',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blue,
      ),
      body:Container(
        child: Center(
          child: SizedBox(
            width: 300,
            child: Form(
              key: formfield,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome Back',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),SizedBox(height: 11,),
                    Text('Enter tour credential to login'),SizedBox(height: 11,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: EmailContoller,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                        )
                      ),
                      validator: (value) {
                        if(value!.isEmpty)
                          {
                            return "Enter your Email";
                          }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: PassContoller,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.password_rounded),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle=!passToggle;
                            });
                          },
                          child: Icon(passToggle?Icons.visibility:Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                        )
                      ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Enteryour  Password";
                      }
                    },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 50),
                            backgroundColor: Colors.blueAccent),
                        onPressed: (){
                      if(formfield.currentState!.validate())
                        {
                          _login(context);
                        }
                    }, child: Center(
                        child: Text('Login',style: TextStyle(color: Colors.white,),))
                    ),
                    SizedBox(height: 25,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ForgetPage();
                      },));
                    }, child: Text('Forget password?',style: TextStyle(color: Colors.blueAccent),)),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an account ?'),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SignUp();
                          },));
                        }, child: Text('Sign Up',style: TextStyle(color: Colors.blueAccent),))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _login( var context) {
    var email = EmailContoller.text;
    var pass = int.parse(PassContoller.text);

  if (email == 'sashutosh186@gmail.com' && pass == 123456) {
      setState(() {
        _result = 'Successfully Login';
        showAlert(context, 'You ${_result}');
      });
    }
    else {
      setState(() {
        _result = 'Enter Valid Email & Password';
        showAlert(context, '${_result}');
      });
    }
  }
}



