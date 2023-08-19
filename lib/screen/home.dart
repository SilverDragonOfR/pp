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
  List<List<String>> game = [];

  String turn = "o";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    game = [[a1,a2,a3],[b1,b2,b3],[c1,c2,c3]];
  }

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
                          if(a1=="") {
                            if (turn == "x") {
                              a1 = "x";
                              turn = "o";
                            }
                            else {
                              a1 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a2),
                        onPressed: (){
                          if(a2=="") {
                            if (turn == "x") {
                              a2 = "x";
                              turn = "o";
                            }
                            else {
                              a2 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a3),
                        onPressed: (){
                          if(a3=="") {
                            if (turn == "x") {
                              a3 = "x";
                              turn = "o";
                            }
                            else {
                              a3 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(b1),
                        onPressed: (){
                          if(b1=="") {
                            if (turn == "x") {
                              b1 = "x";
                              turn = "o";
                            }
                            else {
                              b1 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(b2),
                        onPressed: (){
                          if(b2=="") {
                            if (turn == "x") {
                              b2 = "x";
                              turn = "o";
                            }
                            else {
                              b2 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(b3),
                        onPressed: (){
                          if(b3=="") {
                            if (turn == "x") {
                              b3 = "x";
                              turn = "o";
                            }
                            else {
                              b3 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(c1),
                        onPressed: (){
                          if(c1=="") {
                            if (turn == "x") {
                              c1 = "x";
                              turn = "o";
                            }
                            else {
                              c1 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(c2),
                        onPressed: (){
                          if(c2=="") {
                            if (turn == "x") {
                              c2 = "x";
                              turn = "o";
                            }
                            else {
                              c2 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(c3),
                        onPressed: (){
                          if(c3=="") {
                            if (turn == "x") {
                              c3 = "x";
                              turn = "o";
                            }
                            else {
                              c3 = "o";
                              turn = "x";
                            }
                          }
                          setState(() {
                          });
                        },
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
