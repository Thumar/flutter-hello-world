import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Hello World", //App Name
    home: new HelloWorldHome(),
  ));
}

class HelloWorldHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Main Page"),
        leading: new IconButton(icon: new Icon(Icons.menu),
            tooltip: "Navigation Menu",
            onPressed: null),
        actions: [
          new IconButton(icon: new Icon(Icons.save),
              tooltip: "Save Item",
              onPressed: null)
        ],
      ),

      body: new Center(
          child: new Text("Hello World")
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'Add', // used by assistive technologies
          child: new Icon(Icons.add),
          onPressed: () {
            sayHi();
          }
      ),
    );
  }

  void sayHi() {
    print("Say Hii");
  }
}