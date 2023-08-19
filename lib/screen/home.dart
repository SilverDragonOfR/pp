import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
{

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
  bool isDisabled = false;
  List<List<String>> game = [];

  String turn = "o";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    game = [[a1,a2,a3],[b1,b2,b3],[c1,c2,c3]];
  }

  @override
  Widget build(BuildContext context)
  {
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
                        onPressed: isDisabled ? null : (){
                          if(a1=="") {
                            if (turn == "x") {
                              a1 = "x";
                              game[0][0] = "x";
                              turn = "o";
                            }
                            else {
                              a1 = "o";
                              game[0][0] = "o";
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
                        onPressed: isDisabled ? null : (){
                          if(a2=="") {
                            if (turn == "x") {
                              a2 = "x";
                              game[0][1] = "x";
                              turn = "o";
                            }
                            else {
                              a2 = "o";
                              game[0][1] = "o";
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
                        onPressed: isDisabled ? null : (){
                          if(a3=="") {
                            if (turn == "x") {
                              a3 = "x";
                              game[0][2] = "x";
                              turn = "o";
                            }
                            else {
                              a3 = "o";
                              game[0][2] = "o";
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
                        onPressed: isDisabled ? null : (){
                          if(b1=="") {
                            if (turn == "x") {
                              b1 = "x";
                              game[1][0] = "x";
                              turn = "o";
                            }
                            else {
                              b1 = "o";
                              game[1][0] = "o";
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
                        onPressed: isDisabled ? null : (){
                          if(b2=="") {
                            if (turn == "x") {
                              b2 = "x";
                              game[1][1] = "x";
                              turn = "o";
                            }
                            else {
                              b2 = "o";
                              game[1][1] = "o";
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
                        onPressed: isDisabled ? null : (){
                          if(b3=="") {
                            if (turn == "x") {
                              b3 = "x";
                              game[1][2] = "x";
                              turn = "o";
                            }
                            else {
                              b3 = "o";
                              game[1][2] = "o";
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
                        onPressed: isDisabled ? null : (){
                          if(c1=="") {
                            if (turn == "x") {
                              c1 = "x";
                              game[2][0] = "x";
                              turn = "o";
                            }
                            else {
                              c1 = "o";
                              game[2][0] = "0";
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
                        onPressed: isDisabled ? null : (){
                          if(c2=="") {
                            if (turn == "x") {
                              c2 = "x";
                              game[2][1] = "x";
                              turn = "o";
                            }
                            else {
                              c2 = "o";
                              game[2][1] = "o";
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
                        child: Text(c3),
                        onPressed: isDisabled ? null : (){
                          if(c3=="") {
                            if (turn == "x") {
                              c3 = "x";
                              game[2][2] = "x";
                              turn = "o";
                            }
                            else {
                              c3 = "o";
                              game[2][2] = "o";
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
                )
              ],
            )
          ),
      )
    );
  }

  void check(game)
  {
    bool isComplete = true;
    for(int i=0;i<3;i++){
      for(int j=0;j<3;j++){
        if(game[i][j]=="") isComplete = false;
      }
    }
    bool isWinner = false;
    String winner = "";
    if( (game[0][0]=="x" && game[0][1]=="x" && game[0][2]=="x") ||
        (game[1][0]=="x" && game[1][1]=="x" && game[1][2]=="x") ||
        (game[2][0]=="x" && game[2][1]=="x" && game[2][2]=="x") ||
        (game[0][0]=="x" && game[1][0]=="x" && game[2][0]=="x") ||
        (game[0][1]=="x" && game[1][1]=="x" && game[2][1]=="x") ||
        (game[0][2]=="x" && game[1][2]=="x" && game[2][2]=="x") ||
        (game[0][0]=="x" && game[1][1]=="x" && game[2][2]=="x") ||
        (game[0][2]=="x" && game[1][1]=="x" && game[2][0]=="x")
    ){
      isWinner = true;
      winner = "x";
    }

    if( (game[0][0]=="o" && game[0][1]=="o" && game[0][2]=="o") ||
        (game[1][0]=="o" && game[1][1]=="o" && game[1][2]=="o") ||
        (game[2][0]=="o" && game[2][1]=="o" && game[2][2]=="o") ||
        (game[0][0]=="o" && game[1][0]=="o" && game[2][0]=="o") ||
        (game[0][1]=="o" && game[1][1]=="o" && game[2][1]=="o") ||
        (game[0][2]=="o" && game[1][2]=="o" && game[2][2]=="o") ||
        (game[0][0]=="o" && game[1][1]=="o" && game[2][2]=="o") ||
        (game[0][2]=="o" && game[1][1]=="o" && game[2][0]=="o")
    )
    {
      isWinner = true;
      winner = "o";
    }

    if(isComplete){
      if(isWinner){
        print("Winner is: "+winner);

        isDisabled = true;
      }
      else{
        print("draw");

        isDisabled = true;
      }
    }
    else{
      if(isWinner){
        print("Winner is: "+winner);

        isDisabled = true;
      }
      else{
        print("continue");
      }
    }

  }
}