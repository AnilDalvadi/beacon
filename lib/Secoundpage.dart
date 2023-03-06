import 'package:flutter/material.dart';
import 'package:teamnet_test/menu.dart';
import 'package:go_router/go_router.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  State<SecondPage> createState() => _SecondPage();
}
class _SecondPage extends State<SecondPage> {

  List<menu> sideBar=[
      menu(name: "Home", iconData:Icons.home,path: "/home"),
      //menu(name: "Asset Search",iconData:Icons.search),
      //menu(name: "Asset Tracking",iconData:Icons.bluetooth_audio),
      //menu(name: "Team Request",iconData:Icons.group),
      //menu(name: "Active Scan",iconData:Icons.location_on),
      menu(name: "Settings",iconData:Icons.settings,path: "/settings"),
      //menu(name: "Help",iconData:Icons.help),
      //menu(name: "Logout",iconData:Icons.logout),
   ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
      drawer:Drawer(
        child:Column(
          children: [
            Container(
              height: 95,
              color: const Color(0xffF2F2F2),
              alignment:Alignment.center,
              padding: const EdgeInsets.only(left: 0,top:27),
              child: const  Text('Teamnet',style: TextStyle(color: Color(0xff231F20),fontSize:19,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 35,
              color: const Color(0xff0092BC),
              alignment:Alignment.center,
              padding: const EdgeInsets.only(right: 19,top:1),
              child: const Text('Team Support Desk',style: TextStyle(color: Color(0xffCCECF7),fontSize:19),),
                     ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Padding(padding: EdgeInsets.only(left:40,top:9), // this doesn't work for top and bottom
                    child: Text('Dev User', style: TextStyle(color: Color(0xff606060),fontSize:18,fontWeight: FontWeight.bold),),),),
                Expanded(
                  child: Padding(padding: EdgeInsets.only(left:55,top:12), // this doesn't work for top and bottom
                    child: Text('Version : 23', style: TextStyle(color: Color(0xffA7A7A7),fontSize:13),),),),
                                      ],
            ),
            Column(
              children:[
                ListView.builder(
                 shrinkWrap:true,
                 itemCount: sideBar.length,
                 itemBuilder: (BuildContext context,index)
              {
                  return GestureDetector(
                    child:Container(
                      child: ListTile(leading:Icon((sideBar[index].iconData)),
                          onTap: () => GoRouter.of(context).go(sideBar[index].path),
                        title: Text(sideBar[index].name,style: const TextStyle(color: Color(0xff0092BC),fontSize:20)),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded,color: Color(0xff0092BC)),

                    ),
                    ),
                  );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Center(),
    );
  }
}

