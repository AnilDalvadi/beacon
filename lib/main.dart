import 'package:flutter/material.dart';
import 'package:teamnet_test/Secoundpage.dart';
import 'package:go_router/go_router.dart';
import 'Settingpage.dart';
import 'homepage.dart';
void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static const String _title = 'Teamnet';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: _title,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
    );
  }
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePage();
        },
      ),
      GoRoute(
        path: '/a',
        builder: (BuildContext context, GoRouterState state) {
          return const SecondPage();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
      ),
      GoRoute(
        path: '/settings',
        builder: (BuildContext context, GoRouterState state) {
          return const Setting();
        },
      ),
    ],
  );
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  TextEditingController groupController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return   Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [


                   Container(
                    alignment:Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 100,left: 25),

                    child: const Text('LOGIN',style: TextStyle(color:Color(0xff464646),fontSize: 33),

                    ),

                  ),

                Container(
                  alignment:Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 28),
                  child: const Text('______',style: TextStyle(color: Color(0xff0092BC),fontSize: 33,decoration: TextDecoration.underline),

                  ),

                ),


                Container(
                  padding: const EdgeInsets.only(top: 25,left: 25),
                    child: RichText(
                text: const TextSpan(

                style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                ),
            children: <TextSpan>[
              TextSpan(text: 'Sign in with your'),
              TextSpan(text: ' TeamNet ', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'account to access Mobile Services'),
            ],
          ),
    ),
                ),


                Container(
                  padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
                  child: Column(
                    children:[

                      TextField(

                        decoration: InputDecoration(


                         fillColor: const Color(0xffEAFAFF),
                            filled: true,


                            hintText: 'Group',
                          hintStyle: const TextStyle(color:Color(0xff95C5D3)),
                          prefixIcon: const Visibility(
                            visible:true,
                            child: Icon(Icons.person_search_rounded, color: Color(0xff95C5D3),),
                          ),

                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10)
                        ),
                          labelStyle: const TextStyle(color: Color(0xffEAFAFF)),
                        ),
                      ),
                      const SizedBox(

                        height: 30,
                      ),

                      TextField(
                    
                        decoration: InputDecoration(
                          fillColor: const Color(0xffEAFAFF),
                          filled: true,

                          hintText: 'Username',
                          hintStyle: const TextStyle(color:Color(0xff95C5D3)),
                          prefixIcon: const Visibility(
                            visible:true,
                            child: Icon(Icons.person,color: Color(0xff95C5D3),),
                          ),

                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10)

                          ),
                          labelStyle: const TextStyle(color: Color(0xffEAFAFF)),
                        ),
                        
                      ),

                      const SizedBox(
                        height: 30,
                      ),


                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: const Color(0xffEAFAFF),
                          filled: true,

                          hintText: 'Password',

                          hintStyle: const TextStyle(color:Color(0xff95C5D3)),
                          prefixIcon: const Visibility(
                            visible:true,
                            child: Icon(Icons.lock,color: Color(0xff95C5D3),),



                          ),
    // Here is key idea






                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10)


                          ),
                          labelStyle: const TextStyle(color: Color(0xffEAFAFF)),
                        ),

                      ),


                    ],
                  ),

                  ),
                Container(
                  alignment:Alignment.bottomRight,
                  padding: const EdgeInsets.only(right: 23),
                  child: TextButton(
                    onPressed: (){},
                        child:const Text('Forgot Password'
                       ,style: TextStyle(color:Color(0xff0092BC)) ),

                  ),

                ),
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: const Color(0xff0092BC),
                    child: IconButton(onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const SecondPage()),
                    );
                    },
                    icon: const Icon(Icons.arrow_forward),
                    ),
                  )



              ],
            ),
          ),




    );

  }
}


