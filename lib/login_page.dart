import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage('images/logo.png'),
              height: 300,
              fit: BoxFit.contain,
              ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter Email",
              prefixIcon: Icon(Icons.mail_outline),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Password",
                prefixIcon: Icon(Icons.lock_outline_rounded)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text("Login", style: TextStyle(fontSize: 18),),
            ),
                   SizedBox(height: 5,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      height: 70,
                      width: 70,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                      ),
                      child: Image.asset("images/fb.png"),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                      ),
                      child: Image.asset("images/google.png"),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                      ),
                      child: Image.asset("images/twitter.png"),
                    ),
                  SizedBox(height:5,),
                  Container(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      Text("Don't have an account ?",style: TextStyle(color:Colors.green,fontSize:14),),
                      GestureDetector(
                        onTap:()async{ },
                        child: Text("Sign Up", style: TextStyle(color: Colors.redAccent,fontSize: 14),)),
                        ]
                )
              )
            ],
          )
          
        )
      ]
     )
    )
   );       
  }
}