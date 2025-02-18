import 'package:flutter/material.dart';
import 'package:login_ui/widgets/button.dart';
import 'package:login_ui/widgets/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // ignore: deprecated_member_use
       backgroundColor: Theme.of(context).primaryColor.withOpacity(0),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("lib/images/lock.png"),
                  fit: BoxFit.cover,
                    ),
                  ),
                  ),
                  SizedBox(height:50),
                  Text("Welcome Back you've been missed!"),
        
                  Form(child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          
                          Input(text: 'Username'),
        
                      
                          
                          SizedBox(
                            height: 14,
                          ),
                         Input(text: 'Password'),
                          SizedBox(height:12),
        
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              150,
                              10,
                              0,
                              0),
                            child: Text('Forget Password ?'),
        
                          ),
                          SizedBox(
                            height:20
                          ),
                          
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: double.infinity,
                              height:60,
                              
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                              
                                
                              ),
                              child: const Center(
                                child: Text('Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                          )
                        ],
                        
                      ),
                    ),
                  )
                  ),
                  SizedBox(height: 5,),
                  Text('Or Continue with'),
                  const SizedBox(height:40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(path: "lib/images/apple.png"),
                      SizedBox(width:15),
                      Button(path:"lib/images/google.png"),
                    ],     
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?  '),
                      Text('Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                 
        
        
            ],
        
          )
          ),
      ),
        backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
