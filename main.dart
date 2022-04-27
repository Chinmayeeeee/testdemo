import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first futter app'),
      centerTitle: true,
      backgroundColor: Colors.amber,
    ),
      body: Center(
        // child: Text('This is cghbfnhj',style: TextStyle(fontSize: 20),),
        // child: Image.asset('assets/img.png'),
        // child: Icon(
        //   Icons.alarm_on_outlined,
        //   color: Colors.blue,
        //   size: 50,
        // ),
        // child: TextButton(
        //   onPressed: () {
        //     print('you clicked me');
        //   },
        //   child: Text('Click me'),
        // ),
        // child: TextButton.icon(
        //     onPressed: () {},
        //     icon: Icon(Icons.mail_outline, color: Colors.red,),
        //     label: Text('Mail me'),
        // ),
        child: GestureDetector(
          onTap: (){
            print('you clicked me');
          //  gesture
          },
        ),
      ),
);
  }
}

//common widgets and layout widgets
class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first flutter app'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Hello world'),
          TextButton(
              onPressed: () {
                print('You clicked me !');
              },
              child: Text('Click me')),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('hello')
          )
        ],
      ),
    );
  }
}

//form widget with validation
class Home3 extends StatelessWidget {
  // const Home3({Key? key}) : super(key: key);
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first flutter app'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username'
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "enter correct name" ;
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password'
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter correct password" ;
                  }
                },
              ),
              TextButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()){
                      print("Successfully logged in");
                    }
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      )
    );
  }
}


//charts
// dependencies:
// flutter:
// sdk: flutter
// fl_chart: ^0.45.1

// or

// flutter pub pub add fl_chart
class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first flutter app'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Container(
        child:LineChart(
          LineChartData( borderData: (FlBorderData(show: false)), lineBarsData: [
            LineChartBarData(spots: [
              const FlSpot(0, 1),
              const FlSpot(1, 3),
              const FlSpot(2, 10),
              const FlSpot(3, 7),
              const FlSpot(4, 12),
              const FlSpot(5, 13),
              const FlSpot(6, 17),
              const FlSpot(7, 15),
              const FlSpot(8, 20)
            ])
          ]),
        ),
      ),
    );
  }
}


//navigation and routing
class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first flutter app'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: Text('click me'),
          ),
        ],
      )
    );
  }
}


class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My first flutter app'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'),
            )
          ],
        )
    );
  }
}
