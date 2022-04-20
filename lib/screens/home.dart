import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pc_portal/screens/partlist.dart';
import 'package:pc_portal/screens/recipe.dart';
import '../styles/app_colors.dart';
import 'signin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final FirebaseAuth auth = FirebaseAuth.instance;


  Future signOut(BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth.signOut();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Signin()),
            (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.whiteshade,
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(fontFamily: "Tomorrow", color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              signOut(context);
            }),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/top_header.png'),
              )
            )
          ),
          Expanded(
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            primary: false,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PartlistPage()),
                  );
                },
              child: Card(
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/parts.png', height: 100,),
                    const Text('\n'),
                    const Text('Gadgets')
                  ]
                )
              ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipePage()),
                  );
                },
              child: Card(
                  elevation: 4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/recipe.png', height: 100,),
                        const Text('\n'),
                        const Text('Recipe')
                      ]
                  )
              ),
              ),
            ]
          )
          )
        ]
      ),
    );
  }
}
