import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Tutorial';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// stateless widget that the main application instantiates
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  var MyItems=[
    {"img":"https://arafatnahid.com/bdu/wp-content/uploads/2021/11/1636889203978-1-scaled-1-1024x768.jpg","caption":"bdu",},
    {"img":"https://arafatnahid.com/bdu/wp-content/uploads/2021/11/1636889203978-1-scaled-1-1024x768.jpg","caption":"du"},
    {"img":"https://arafatnahid.com/bdu/wp-content/uploads/2021/11/1636889203978-1-scaled-1-1024x768.jpg","caption":"cu"},
    {"img":"https://arafatnahid.com/bdu/wp-content/uploads/2021/11/1636889203978-1-scaled-1-1024x768.jpg","caption":"bau"},
    {"img":"https://arafatnahid.com/bdu/wp-content/uploads/2021/11/1636889203978-1-scaled-1-1024x768.jpg","caption":"just"},
    {"img":"https://arafatnahid.com/bdu/wp-content/uploads/2021/11/1636889203978-1-scaled-1-1024x768.jpg","caption":"ju"},




  ];
  mySnackbar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Photo Gallery')),

        ),
        body: SingleChildScrollView(
          child: Column(

            children: [

              Container(
                margin: EdgeInsets.all(20),
                //height: 100.0, // Set the height of the Container
                child: Text(
                  'Welcome to My photo Gallery !',
                  style: TextStyle(color: Colors.black,fontSize: 30.0),
                ),
              ),
              Container(

                height: 100.0, // Set the height of the Container
                child: Center(
                  child:  Padding(padding:EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'Search for photos')),),

                ),
              ),

              SingleChildScrollView(
                child: Container(

                  height: 240.0, // Set the height of the Container
                  child: GridView.builder(

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        childAspectRatio: 1.2,
                      ),

                      itemCount:MyItems.length,
                      itemBuilder: (context,index){
                        //return Icon(Icons.connected_tv_sharp);
                        return GestureDetector(
                          onTap: (){mySnackbar(context, "hello world");},
                          child: Container(

                            margin:EdgeInsets.all(10),


                            child: Column(
                              children: [



                                Image.network(MyItems[index]['img']!,),

                                Text("photo"+index.toString()),
                              ],

                            ),
                          ),
                        );


                      }
                  ),
                ),
              ),


              Container(


                // Set the height of the Container
                  child: Column(
                    children: [
                      ListTile(
                        leading:  CircleAvatar(
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/2071882/pexels-photo-2071882.jpeg?cs=srgb&dl=pexels-wojciech-kumpicki-2071882.jpg&fm=jpg"),
                        ),
                        title: Text('Photo 1'),
                        subtitle:Text("Description for Photo 1"),
                      ),
                      ListTile(
                        leading:  CircleAvatar(
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/2071882/pexels-photo-2071882.jpeg?cs=srgb&dl=pexels-wojciech-kumpicki-2071882.jpg&fm=jpg"),
                        ),
                        title: Text('Photo 2'),
                        subtitle:Text("Description for Photo 2"),
                      ),
                      ListTile(
                        leading:  CircleAvatar(
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/2071882/pexels-photo-2071882.jpeg?cs=srgb&dl=pexels-wojciech-kumpicki-2071882.jpg&fm=jpg"),
                        ),
                        title: Text('Photo 3'),
                        subtitle:Text("Description for Photo 3"),
                      ),
                    ],
                  )



              ),


              Container(
                  margin: EdgeInsets.all(20),
                  // Set the height of the Container
                  child: Column(
                    children: [

                      FloatingActionButton(


                          child:Icon(Icons.upload),
                          onPressed: (){mySnackbar(context, "photos uploaded sucessfully");})

                    ],
                  )



              ),



            ],



          ),
        )


    );
  }
}
