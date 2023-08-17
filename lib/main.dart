import 'package:flutter/material.dart';
import 'package:suvaye_task/pages/Today.dart';
import 'package:suvaye_task/pages/chat.dart';
import 'package:suvaye_task/pages/services.dart';
import 'package:suvaye_task/widg/OutlineButton.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});




  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int selectedIndex = -1;

List pages=[
  
Today(),
HomePage(),

Chat(),

];

 int currentIndex=1;
void onTap(int index){
  setState(() {
    currentIndex=index;
  });
  
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        appBar: AppBar(
          
          
          backgroundColor: Colors.white,
          elevation: 0,
          leading:  Container(
            margin: const EdgeInsets.only(left: 10,),
            child: Image.asset('image/suvaye.jpg')),
          
           title:  Text('SUVAYE',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
           actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: IconButton(onPressed: null, icon:  Icon(Icons.notifications,size: 30,),),
            )
           ],
        ),

        body: pages[currentIndex],
        

         bottomNavigationBar: BottomNavigationBar(
        
       
        onTap: onTap,
        currentIndex: currentIndex,
      selectedItemColor: Colors.purpleAccent,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
        items: const [
        BottomNavigationBarItem(
          
          label: 'Home',
          icon: Icon(Icons.calendar_month_outlined),
        ),
         BottomNavigationBarItem(
          label: 'book',
          icon: Icon(Icons.apps),
        ),
         BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(Icons.chat_bubble_outline),
        ),
         
      ]),

      ),
    );
  }
}

