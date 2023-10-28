import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MaterialApp(  
    title: 'Flutter Navigation',  
    theme: ThemeData(  
      // This is the theme of your application.  
      primarySwatch: Colors.green,  
    ),  
    home: FirstRoute(),  
  ));  
}  
  
class FirstRoute extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('First Screen'),  
      ),  
      body: Center(  
        child: ElevatedButton(  
          child: Text('Click Here'),  
          onPressed: () {  
            Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) => SecondRoute()),  
            );  
          },  
        ),  
      ),  
    );  
  }  
}  
  
class SecondRoute extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Second Screen"),  
      ),  
      body: Center(  
        child: ElevatedButton(  
          onPressed: () {  
            Navigator.pop(context);  
          },  
          child: Text('Go back'),  
        ),  
      ),  
    );  
  }  
}  