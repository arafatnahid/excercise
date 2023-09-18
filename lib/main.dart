//13 stateless widget


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch:Colors.cyan),
        darkTheme: ThemeData(primarySwatch:Colors.deepOrange),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


  MySnackBar (message,context){

    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("MyApp"),
        titleSpacing: 23,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.orange,
        elevation: 6,
        actions: [
          IconButton(onPressed: (){MySnackBar("comments", context);}, icon:Icon(Icons.comment), ),
          IconButton(onPressed:(){MySnackBar("message", context);}, icon:Icon(Icons.message)),
          IconButton(onPressed: (){MySnackBar("search", context);}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("settings", context);}, icon:Icon(Icons.settings))

        ],




      ) ,
      floatingActionButton: FloatingActionButton(
          elevation: 19,
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,

          onPressed: (){
            MySnackBar("i am float acting button", context);

          }),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: 1,

        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: "Person")

        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("this is home", context);
          }
          if(index==1){
            MySnackBar("this is contact", context);
          }
          if(index==2){
            MySnackBar("this is profile", context);
          }
        },
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(

                padding: EdgeInsets.all(0),
                child:UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color:Colors.black),
                  accountName: Text("Arafat",style:TextStyle(color:Colors.white),),
                  accountEmail: Text("arafatnahid20@gmail.com",style:TextStyle(color:Colors.white),),
                  currentAccountPicture:Image.network("https://arafatnahid.com/wp-content/uploads/2021/11/819-8191071_orange-circle-clipart-orange-circle-with-black-outline-removebg-preview-1.png"),
                  onDetailsPressed: (){MySnackBar("this is profile", context);},


                )


            ),
            ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap:(){MySnackBar("homepage", context);},),
            ListTile(leading: Icon(Icons.contact_mail),title: Text("Contact"),onTap:(){MySnackBar("homepage", context);}),
            ListTile(leading: Icon(Icons.person),title: Text("Profile"),onTap:(){MySnackBar("profile", context);}),
            ListTile(leading: Icon(Icons.email),title: Text("Email"),onTap:(){MySnackBar("email", context);}),
            ListTile(leading: Icon(Icons.phone),title: Text("Contact"),onTap:(){MySnackBar("contact", context);}),








          ],




        ),









      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(

                padding: EdgeInsets.all(0),
                child:UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color:Colors.black),
                  accountName: Text("Arafat",style:TextStyle(color:Colors.white),),
                  accountEmail: Text("arafatnahid20@gmail.com",style:TextStyle(color:Colors.white),),
                  currentAccountPicture:Image.network("https://arafatnahid.com/wp-content/uploads/2021/11/819-8191071_orange-circle-clipart-orange-circle-with-black-outline-removebg-preview-1.png"),
                  onDetailsPressed: (){MySnackBar("this is profile", context);},


                )


            ),
            ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap:(){MySnackBar("homepage", context);},),
            ListTile(leading: Icon(Icons.contact_mail),title: Text("Contact"),onTap:(){MySnackBar("homepage", context);}),
            ListTile(leading: Icon(Icons.person),title: Text("Profile"),onTap:(){MySnackBar("profile", context);}),
            ListTile(leading: Icon(Icons.email),title: Text("Email"),onTap:(){MySnackBar("email", context);}),
            ListTile(leading: Icon(Icons.phone),title: Text("Contact"),onTap:(){MySnackBar("contact", context);}),








          ],




        ),









      ),







      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton( "submit"),
            SizedBox(height: 10,),
            CustomButton( "delete"),
            SizedBox(height: 10,),
            CustomButton( "upload"),
            SizedBox(height: 10,),
            CustomButton("send" ),
            SizedBox(height: 10,),
          ],
        ),
      )




    );
  }

}
class CustomButton extends StatelessWidget{
  final String title;
  const CustomButton(this.title);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("on tap");
      },
      child: Container(
        height:40,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue
        ),
        child: Center(child: Text(title)),
      ),
    );
  }

}
