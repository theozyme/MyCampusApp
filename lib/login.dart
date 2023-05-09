import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'homepage.dart';
import 'register.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/images/login.png'), fit: BoxFit.cover )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:120,top:200),
              child: Text('Giriş Yap', style:TextStyle(
                color: Colors.black,
                fontSize:40,
                
              ),),
            ),
            SingleChildScrollView(
              child:Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.4, right: 35, left:35
              ),
                
            

              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled:true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height:30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled:true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                    
                    children: [
                    Text(
                      'Giriş yapmak için butona tıklayın',
                    style:TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,

                    ),
                    ),

                   CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                    child:IconButton(
                      color:Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()),);
                      },
                      icon: Icon(Icons.arrow_forward),
                    )
                   )
                  ],),
                SizedBox(
                    height: 190,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()),);
              },
                         child: Text(
                          'Kayıt Ol',
                          style:TextStyle(
                             color: Colors.black,
                          //decoration: TextDecoration.underline,
                          fontSize: 20,
                       
                     ))),
                     
                  ],),


              ]),
            ),
            )
          ],
        ),
        ),
    );
  }
}