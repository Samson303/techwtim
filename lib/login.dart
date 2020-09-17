import 'package:flutter/material.dart';
import 'package:techwtim/myHomePage.dart';
import 'myHomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name;
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyhomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: this.controller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: "type your Name",
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0, color: Colors.black)),
              suffixIcon: IconButton(
                  icon: Icon(Icons.done),
                  onPressed: this.click,
                  splashColor: Colors.blue,
                  tooltip: 'Submit'),
            ),
          ),
        ));
  }
}
