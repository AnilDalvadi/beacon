import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Setting extends StatefulWidget {
  const  Setting  ({Key? key}) : super(key: key);



  @override
  State< Setting > createState() => _Setting ();
}
class _Setting  extends State<Setting > {
  //const  _SecondPage ({Key? key}):super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            context.go("/a");
          }
        ),
        title: Text("SETTING"),
        centerTitle: true,
      ),
      body: Center(

      ),
    );
  }

}