import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends class name extends StatelessWidget {
  //const name({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: FirstPage(),
    );
  }
}

//First Page
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing App'),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:<Widget> [
            Text(
              'First Page',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 50,
                fontWeight: FontWeight.normal,
              ),
            ),
            RaisedButton(
              child: Text('Go To Second'),
              onPressed: (){
                //pushing a route without using a named Route
                Navigator.of(context).push(
                  //with materialPage Route you can pass data between  pages
                  //but if you have a complex app ypiu will quickly get lost
                  MaterialPageRoute(
                    builder: (context) =>
                      secondPage(data: 'hello there I am from thee first Page'),
                  ),

                );

              },
            ),
          ],
        ),
      ),
    );
  }
}

//Second Page
class secondPage extends StatelessWidget{

  final String data;

  secondPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text ('Routing App'),
      ),
      body:Center(
        child:column(
          mainAxisSize: MainAxisSize.min,
          children:<Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize:50),
            ),
            Text(
              data,
              style:TextStyle(fontSize: 20),
            ),

          ],
        ),
      )

    );
  }
}