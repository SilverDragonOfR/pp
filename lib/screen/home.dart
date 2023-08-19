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

  String OverText = "";

  double s = 90;
  bool isDisabled = false;
  List<List<String>> game = [];

  List history = [];

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
        actions:
        [
          ElevatedButton(onPressed: ()
          {
            a1 = "";
            a2 = "";
            a3 = "";
            b1 = "";
            b2 = "";
            b3 = "";
            c1 = "";
            c2 = "";
            c3 = "";

            OverText = "";
            isDisabled = false;
            game = [[a1,a2,a3],[b1,b2,b3],[c1,c2,c3]];
            turn = "o";
            history = [];
            setState(() {
            });
          }, child: Text("New Game")),
          SizedBox(width: 20,),
          ElevatedButton(onPressed: ()
          {
            if(history.length>=1 && !isDisabled) {
              List last = history[history.length-1];
              history.removeLast();

              game[last[0]][last[1]] = "";
              if(turn=="x") {
                turn = "o";
              }
              else{
                turn = "x";
              }
              if(last[0]==0 && last[1]==0){
                a1 = "";
              }
              else if(last[0]==0 && last[1]==1){
                a2 = "";
              }
              else if(last[0]==0 && last[1]==2){
                a3 = "";
              }
              else if(last[0]==1 && last[1]==0){
                b1 = "";
              }
              else if(last[0]==1 && last[1]==1){
                b2 = "";
              }
              else if(last[0]==1 && last[1]==2){
                b3 = "";
              }
              else if(last[0]==2 && last[1]==0){
                c1 = "";
              }
              else if(last[0]==2 && last[1]==1){
                c2 = "";
              }
              else if(last[0]==2 && last[1]==2){
                c3 = "";
              }

              setState(() {
              });
            }
          }, child: Text("Undo")),
          SizedBox(width: 20,),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
          [
            Text("Move of: "+turn, style: TextStyle(fontSize: 30),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              history.add([0,0]);
                              turn = "o";
                            }
                            else {
                              a1 = "o";
                              game[0][0] = "o";
                              history.add([0,0]);
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a2),
                        onPressed: isDisabled ? null : (){
                          if(a2=="") {
                            if (turn == "x") {
                              a2 = "x";
                              game[0][1] = "x";
                              history.add([0,1]);
                              turn = "o";
                            }
                            else {
                              a2 = "o";
                              game[0][1] = "o";
                              history.add([0,1]);
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(a3),
                        onPressed: isDisabled ? null : (){
                          if(a3=="") {
                            if (turn == "x") {
                              a3 = "x";
                              game[0][2] = "x";
                              history.add([0,2]);
                              turn = "o";
                            }
                            else {
                              a3 = "o";
                              game[0][2] = "o";
                              history.add([0,2]);
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
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              history.add([1,0]);
                              turn = "o";
                            }
                            else {
                              b1 = "o";
                              game[1][0] = "o";
                              history.add([1,0]);
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(b2),
                        onPressed: isDisabled ? null : (){
                          if(b2=="") {
                            if (turn == "x") {
                              b2 = "x";
                              game[1][1] = "x";
                              history.add([1,1]);
                              turn = "o";
                            }
                            else {
                              b2 = "o";
                              game[1][1] = "o";
                              history.add([1,1]);
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(b3),
                        onPressed: isDisabled ? null : (){
                          if(b3=="") {
                            if (turn == "x") {
                              b3 = "x";
                              game[1][2] = "x";
                              history.add([1,2]);
                              turn = "o";
                            }
                            else {
                              b3 = "o";
                              game[1][2] = "o";
                              history.add([1,2]);
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
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              history.add([2,0]);
                              turn = "o";
                            }
                            else {
                              c1 = "o";
                              game[2][0] = "0";
                              history.add([2,0]);
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(c2),
                        onPressed: isDisabled ? null : (){
                          if(c2=="") {
                            if (turn == "x") {
                              c2 = "x";
                              game[2][1] = "x";
                              history.add([2,1]);
                              turn = "o";
                            }
                            else {
                              c2 = "o";
                              game[2][1] = "o";
                              history.add([2,1]);
                              turn = "x";
                            }
                          }
                          setState(() {
                            check(game);
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: s, height: s,
                      child: ElevatedButton(
                        child: Text(c3),
                        onPressed: isDisabled ? null : (){
                          if(c3=="") {
                            if (turn == "x") {
                              c3 = "x";
                              game[2][2] = "x";
                              history.add([2,2]);
                              turn = "o";
                            }
                            else {
                              c3 = "o";
                              game[2][2] = "o";
                              history.add([2,2]);
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
            ),
            Text(OverText, style: TextStyle(fontSize: 30),)
          ],
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

        isDisabled = true;
        OverText = winner+" wins!";
      }
      else{

        OverText = "Draw";
        isDisabled = true;
      }
    }
    else{
      if(isWinner){
        OverText = winner+" wins!";
        isDisabled = true;
      }
    }

  }
}