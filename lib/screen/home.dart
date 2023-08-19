import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String a1 = "";
  String a2 = "";
  String a3 = "";
  String b1 = "";
  String b2 = "";
  String b3 = "";
  String c1 = "";
  String c2 = "";
  String c3 = "";

  double s = 90;

  String turn = "o";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){
                          if(a1==""){
                            if(turn=="x"){
                              a1="o"
                            }
                            else{

                            }
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a1),
                        onPressed: (){},
                      ),
                    ),
                  ],
                )
              ],
            )
          ),
      )
    );
  }
}
