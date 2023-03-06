import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const  Home ({Key? key}) : super(key: key);



  @override
  State< Home> createState() => _Home();
}
class _Home extends State<Home> {
  //const  _SecondPage ({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              context.go("/a");
            }
        ),
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(

      ),
    );
  }

}