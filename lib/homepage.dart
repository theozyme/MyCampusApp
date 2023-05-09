import 'package:flutter/material.dart';
import 'page/attachment.dart';
import 'page/group.dart';
import 'page/chat.dart';
import 'page/profile.dart';
import 'page/my_campus.dart';
//import 'page/haber.dart';//haber akışını buraya ekleyebiliriz.

class Home extends StatefulWidget {
  @override
  _HomeState createState()=>_HomeState();
}


class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens=[
    Ikon(),
    Attachment(),
    Chat(),
    Profile(),
    Group()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Ikon();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child:currentScreen,
        bucket: bucket,
      ),
 floatingActionButton: SizedBox(
  width: 200,
  height: 100,
  child: FloatingActionButton(
   onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()),);
              },
    child: CircleAvatar(
      backgroundImage: AssetImage("assets/images/ikon.png"),
      radius: 80,
    ),
    elevation: 100,
    backgroundColor: Colors.blue,
  ),
),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color:Colors.orange,
        shape: CircularNotchedRectangle(),
        
        notchMargin: -44,
        //navbar kıvrımını sağlar
        child: Container(
         
         
          height:80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  MaterialButton(
                    minWidth:40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Attachment();
                        currentTab = 0;
                      });
                    },

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder,
                          color: currentTab == 0 ? Colors.black : Color.fromARGB(255, 60, 60, 60),

                        ),
                        Text(
                          'Attachment',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black : Color.fromARGB(255, 60, 60, 60),
                           ))
                      ],
                      )
                  ),

                       MaterialButton(
                    minWidth: 80,
                    onPressed: (){
                      setState(() {
                        currentScreen = Group();
                        currentTab = 0;
                      });
                    },

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.group,
                          color: currentTab == 0 ? Colors.black :Color.fromARGB(255, 60, 60, 60),

                        ),
                        Text(
                          'Group',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black : Color.fromARGB(255, 60, 60, 60),
                           ))
                      ],
                      )
                  ),

                                    MaterialButton(
                    minWidth: 130,
                    onPressed: (){
                      setState(() {
                        currentScreen = Chat();
                        currentTab = 0;
                      });
                    },

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 0 ? Colors.black : Color.fromARGB(255, 60, 60, 60),

                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black :Color.fromARGB(255, 60, 60, 60),
                           ))
                      ],
                      )
                  ),

                     MaterialButton(
                    minWidth:40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 0;
                      });
                    },

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 0 ? Colors.black : Color.fromARGB(255, 60, 60, 60),

                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black :Color.fromARGB(255, 60, 60, 60),
                           ))
                      ],
                      )
                  ),
                ],
              )
            ],
          ), )
        ,
      ),
    );
  }
}