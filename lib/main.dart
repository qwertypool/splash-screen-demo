import 'dart:async';
import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
	Timer(Duration(seconds: 5),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														SecondScreen()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return Container(
	color: Colors.white,
	child:FlutterLogo(size:MediaQuery.of(context).size.height)
	);
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
    backgroundColor: Colors.pink,
    toolbarHeight: 100,
    centerTitle: true,
    title:Text("Splash screen checkkk"))
    ,
	body: Center(
		child:Text("working...",textScaleFactor: 2,)
	),
  floatingActionButton: FloatingActionButton(backgroundColor: Colors.pink[400],onPressed: (){},
  child: Icon(Icons.sports_handball_sharp),),
	);
}
}
