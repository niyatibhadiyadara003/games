import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:scratcher/scratcher.dart';
import 'package:flutter_snake/flutter_snake.dart';

import 'Mazepage.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => Homepage(),
      "mainpage": (context) => Mainpage(),
      "Firstpage": (context) => Firstpage(),
      "Secondpage": (context) => Secondpage(),
      "tictactoepage": (context) => Tictactoepage(),
      "Mazepage": (context) => Mazepage(),
      "Mazepage1": (context) => Mazepage1(),
      "Mazepage2": (context) => Mazepage2(),
      "chesspage": (context) => Chesspage(),
      "funpage": (context) => Funpage(),
      'funpage2': (context) => Funpage2(),
    }),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        Navigator.of(context).pushNamed("mainpage");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2JUNqeFqAeqVX2ea_p3rYbH43BYnFDT_1kA&usqp=CAU"),
    );
  }
}

//---------------------------------------------------------------------------------
class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed("Firstpage");
                  });
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 8,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.network(
                        'https://static.vecteezy.com/system/resources/previews/006/582/091/original/trophy-cup-in-hand-gold-goblet-isolated-on-background-awards-for-winner-champion-concept-of-victory-award-championship-leadership-achievement-elements-for-logo-label-game-app-vector.jpg',
                        height: 150,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Scratch Game",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Secondpage");
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 8,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIfGcHQFxYcp_fVvF8BLuXvwRzR0OwaDrfxQ&usqp=CAU',
                        height: 150,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Snake Game",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("chesspage");
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 8,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.network(
                        "https://media.istockphoto.com/vectors/chess-pieces-vector-illustration-chess-pieces-king-knight-rook-pawns-vector-id1308228271?k=20&m=1308228271&s=612x612&w=0&h=dCpxhlcTlOcHa1xZ9gjEFAIaZj5JOlq6GbY2O0e8TPk=",
                        height: 150,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Chess Game",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("tictactoepage");
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 8,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5I5rag73q2GifdTXr9kRxU5RRc1ylPPKV-Q&usqp=CAU",
                        height: 140,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Tic Tac Toe Game",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Mazepage");
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 8,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.network(
                        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f8f29861-d22a-4061-b5e1-1d4696f2ef48/dactbde-9f6d3b34-55ee-414c-aa9a-813aa7892333.jpg/v1/fill/w_1024,h_1023,q_75,strp/rise_of_tiamat___gorgon_maze_7_by_michaelarkangel_dactbde-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyMyIsInBhdGgiOiJcL2ZcL2Y4ZjI5ODYxLWQyMmEtNDA2MS1iNWUxLTFkNDY5NmYyZWY0OFwvZGFjdGJkZS05ZjZkM2IzNC01NWVlLTQxNGMtYWE5YS04MTNhYTc4OTIzMzMuanBnIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.8gJlnNtjubMsXXSiVRr3YZFfnUj4sv92hYyBaPC8ZGM",
                        height: 150,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Maze Game",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("funpage");
                },
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 8,
                        )
                      ]),
                  child: Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-DjCMC9Fl3ktF50iWWvZOQRcuLDnbeISciw&usqp=CAU",
                        height: 150,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Fun Game",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//------------------------------------------------------------------------------------
class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

final scratchkey1 = GlobalKey<ScratcherState>();
final scratchkey2 = GlobalKey<ScratcherState>();
final scratchkey3 = GlobalKey<ScratcherState>();
final scratchkey4 = GlobalKey<ScratcherState>();
final scratchkey5 = GlobalKey<ScratcherState>();
final scratchkey6 = GlobalKey<ScratcherState>();
final scratchkey7 = GlobalKey<ScratcherState>();
final scratchkey8 = GlobalKey<ScratcherState>();
final scratchkey9 = GlobalKey<ScratcherState>();

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch game"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Scratcher(
                    key: scratchkey1,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    )),
                const SizedBox(width: 20),
                Scratcher(
                    key: scratchkey2,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text(
                        "You Won ₹ 2000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    )),
                const SizedBox(width: 20),
                Scratcher(
                    key: scratchkey3,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Scratcher(
                    key: scratchkey4,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    )),
                const SizedBox(width: 20),
                Scratcher(
                    key: scratchkey5,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    )),
                const SizedBox(width: 20),
                Scratcher(
                    key: scratchkey6,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text(
                        "You Won ₹ 1000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Scratcher(
                    key: scratchkey7,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    )),
                const SizedBox(width: 20),
                Scratcher(
                    key: scratchkey8,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    )),
                const SizedBox(width: 20),
                Scratcher(
                    key: scratchkey9,
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.green,
                    onChange: (val) {
                      print("scrach progress: $val%");
                    },
                    onThreshold: () {
                      print("Threshold reached,you won!");
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const FlutterLogo(),
                    )),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                scratchkey1.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey2.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey3.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey4.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey5.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey6.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey7.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey8.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
                scratchkey9.currentState
                    ?.reset(duration: Duration(milliseconds: 1000));
              },
              child: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}

//-------------------------------------------------------------------
class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  StreamController<GAME_EVENT>? controller;
  SnakeGame? snakeGame;

  @override
  void initState() {
    super.initState();
    controller = StreamController<GAME_EVENT>();
    controller?.stream.listen((GAME_EVENT value) {
      print(value.toString());
    });

    snakeGame = SnakeGame(
      caseWidth: 26.0,
      numberCaseHorizontally: 15,
      numberCaseVertically: 15,
      controllerEvent: controller,
      durationBetweenTicks: Duration(milliseconds: 400),
      colorBackground1: Colors.green,
      colorBackground2: Colors.lightGreen,
    );
  }

  @override
  void dispose() {
    controller?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Snack Game"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            snakeGame ?? const Text("Not initialized"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () => snakeGame?.nextDirection = SNAKE_MOVE.left,
                  child: const Icon(Icons.subdirectory_arrow_left),
                ),
                const SizedBox(width: 15),
                const Text(
                  "Move",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 15),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    snakeGame?.nextDirection = SNAKE_MOVE.right;
                  },
                  child: const Icon(Icons.subdirectory_arrow_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------------------------
class Tictactoepage extends StatefulWidget {
  @override
  _TictactoepageState createState() => _TictactoepageState();
}

class _TictactoepageState extends State<Tictactoepage> {
  bool oTurn = true;

  List displayElement = ['', '', '', '', '', '', '', '', ''];
  int o = 0;
  int x = 0;
  int filledBoxes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe Game"),
      ),
      backgroundColor: Colors.indigo[900],
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Player X',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "$x",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Player O',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(
                          "$o",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      _tapped(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Center(
                        child: Text(
                          displayElement[index],
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.indigo,
                  ),
                  onPressed: _clearScoreBoard,
                  child: Text("Clear Score Board"),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      if (oTurn && displayElement[index] == '') {
        displayElement[index] = 'O';
        filledBoxes++;
      } else if (!oTurn && displayElement[index] == '') {
        displayElement[index] = 'X';
        filledBoxes++;
      }

      oTurn = !oTurn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    // Checking rows
    if (displayElement[0] == displayElement[1] &&
        displayElement[0] == displayElement[2] &&
        displayElement[0] != '') {
      _showWinDialog(displayElement[0]);
    }
    if (displayElement[3] == displayElement[4] &&
        displayElement[3] == displayElement[5] &&
        displayElement[3] != '') {
      _showWinDialog(displayElement[3]);
    }
    if (displayElement[6] == displayElement[7] &&
        displayElement[6] == displayElement[8] &&
        displayElement[6] != '') {
      _showWinDialog(displayElement[6]);
    }

    // Checking Column
    if (displayElement[0] == displayElement[3] &&
        displayElement[0] == displayElement[6] &&
        displayElement[0] != '') {
      _showWinDialog(displayElement[0]);
    }
    if (displayElement[1] == displayElement[4] &&
        displayElement[1] == displayElement[7] &&
        displayElement[1] != '') {
      _showWinDialog(displayElement[1]);
    }
    if (displayElement[2] == displayElement[5] &&
        displayElement[2] == displayElement[8] &&
        displayElement[2] != '') {
      _showWinDialog(displayElement[2]);
    }

    if (displayElement[0] == displayElement[4] &&
        displayElement[0] == displayElement[8] &&
        displayElement[0] != '') {
      _showWinDialog(displayElement[0]);
    }
    if (displayElement[2] == displayElement[4] &&
        displayElement[2] == displayElement[6] &&
        displayElement[2] != '') {
      _showWinDialog(displayElement[2]);
    } else if (filledBoxes == 9) {
      _showDrawDialog();
    }
  }

  void _showWinDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("\" " + winner + " \" is Winner!!!"),
            actions: [
              FlatButton(
                child: Text("Play Again"),
                onPressed: () {
                  _clearBoard();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });

    if (winner == 'O') {
      o++;
    } else if (winner == 'X') {
      x++;
    }
  }

  void _showDrawDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Draw"),
            actions: [
              FlatButton(
                child: Text("Play Again"),
                onPressed: () {
                  _clearBoard();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        displayElement[i] = '';
      }
    });

    filledBoxes = 0;
  }

  void _clearScoreBoard() {
    setState(() {
      x = 0;
      o = 0;
      for (int i = 0; i < 9; i++) {
        displayElement[i] = '';
      }
    });
    filledBoxes = 0;
  }
}
//-----------------------------------------------------------------------------------

//-------------------------------------------------------------------------------

class Chesspage extends StatefulWidget {
  const Chesspage({Key? key}) : super(key: key);

  @override
  State<Chesspage> createState() => _ChesspageState();
}

class _ChesspageState extends State<Chesspage> {
  ChessBoardController controller = ChessBoardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Chess",
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Center(
              child: ChessBoard(
                controller: controller,
                boardColor: BoardColor.green,
                arrows: [
                  BoardArrow(
                    from: 'd2',
                    to: 'd4',
                    color: Colors.green.withOpacity(0.0),
                  ),
                ],
                boardOrientation: PlayerColor.white,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ValueListenableBuilder<Chess>(
              valueListenable: controller,
              builder: (context, game, _) {
                return Text(
                  controller.getSan().fold(
                        '',
                        (previousValue, element) =>
                            previousValue + '\n' + (element ?? ''),
                      ),
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  controller.loadPGN("newpage");
                });
              },
              child: Text("Restart")),
          (controller.isCheckMate())
              ? Text(
                  "gfd",
                  style: TextStyle(fontSize: 25, color: Colors.red),
                )
              : Container()
        ],
      ),
    );
  }
}

//-----------------------------------------------------------------------------
class Funpage extends StatefulWidget {
  @override
  _FunpageState createState() => _FunpageState();
}

class _FunpageState extends State<Funpage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          setState(() {
            Navigator.of(context).pushNamed("funpage2");
          });
        },
        child: Text("Change"),
      ),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            CircularParticle(
              height: h,
              width: w,
              awayRadius: w / 5,
              numberOfParticles: 150,
              speedOfParticles: 1.5,
              particleColor: Colors.white.withOpacity(.7),
              awayAnimationDuration: Duration(milliseconds: 600),
              awayAnimationCurve: Curves.easeInOutBack,
              onTapAnimation: true,
              isRandSize: true,
              isRandomColor: true,
              connectDots: true,
              enableHover: true,
              hoverColor: Colors.blue,
              hoverRadius: 90,
              randColorList: [
                Colors.red.withAlpha(210),
                Colors.white.withAlpha(210),
                Colors.yellow.withAlpha(210),
                Colors.green.withAlpha(210),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DraggableCard(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.7),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Physics',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                DraggableCard1(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.7),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Drag It',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DraggableCard extends StatefulWidget {
  final Widget child;

  DraggableCard({required this.child});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  var _dragAlignment = Alignment.center;

  late Animation<Alignment> _animation;

  final _spring = const SpringDescription(
    mass: 7,
    stiffness: 1200,
    damping: 0.7,
  );

  double _normalizeVelocity(Offset velocity, Size size) {
    final normalizedVelocity = Offset(
      velocity.dx / size.width,
      velocity.dy / size.height,
    );
    return -normalizedVelocity.distance;
  }

  void _runAnimation(Offset velocity, Size size) {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );

    final simulation =
        SpringSimulation(_spring, 0.0, 1.0, _normalizeVelocity(velocity, size));

    _controller.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this)
      ..addListener(() => setState(() => _dragAlignment = _animation.value));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanStart: (details) => _controller.stop(canceled: true),
      onPanUpdate: (details) => setState(
        () => _dragAlignment += Alignment(
          details.delta.dx / (size.width / 2),
          details.delta.dy / (size.height / 2),
        ),
      ),
      onPanEnd: (details) =>
          _runAnimation(details.velocity.pixelsPerSecond, size),
      child: Align(
        alignment: _dragAlignment,
        child: Card(
          child: widget.child,
        ),
      ),
    );
  }
}
//------------------------------------------------------

class DraggableCard1 extends StatefulWidget {
  final Widget child;

  DraggableCard1({required this.child});

  @override
  _DraggableCard1State createState() => _DraggableCard1State();
}

class _DraggableCard1State extends State<DraggableCard1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  var _dragAlignment = Alignment.center;

  late Animation<Alignment> _animation;

  final _spring = const SpringDescription(
    mass: 10,
    stiffness: 1000,
    damping: 0.9,
  );

  double _normalizeVelocity(Offset velocity, Size size) {
    final normalizedVelocity = Offset(
      velocity.dx / size.width,
      velocity.dy / size.height,
    );
    return -normalizedVelocity.distance;
  }

  void _runAnimation(Offset velocity, Size size) {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );

    final simulation =
        SpringSimulation(_spring, 0, 0.0, _normalizeVelocity(velocity, size));

    _controller.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this)
      ..addListener(() => setState(() => _dragAlignment = _animation.value));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanStart: (details) => _controller.stop(canceled: true),
      onPanUpdate: (details) => setState(
        () => _dragAlignment += Alignment(
          details.delta.dx / (size.width / 2),
          details.delta.dy / (size.height / 2),
        ),
      ),
      onPanEnd: (details) =>
          _runAnimation(details.velocity.pixelsPerSecond, size),
      child: Align(
        alignment: _dragAlignment,
        child: Card(
          child: widget.child,
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------------

class Funpage2 extends StatefulWidget {
  const Funpage2({Key? key}) : super(key: key);

  @override
  _Funpage2State createState() => _Funpage2State();
}

class _Funpage2State extends State<Funpage2> {
  bool istapped = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          CircularParticle(
            height: h,
            width: w,
            awayRadius: 0,
            numberOfParticles: 150,
            speedOfParticles: 1.5,
            particleColor: Colors.white.withOpacity(.7),
            maxParticleSize: 7,
            //  awayAnimationDuration: Duration(milliseconds: 600),
            // awayAnimationCurve: Curves.easeInOutBack,
            onTapAnimation: false,
            isRandSize: true,
            hoverColor: Colors.blue,
            hoverRadius: 90,
            isRandomColor: false,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      istapped = !istapped;
                    });
                  },
                  child: AnimatedContainer(
                    margin: EdgeInsets.only(bottom: istapped ? 0 : 500),
                    duration: Duration(seconds: 2),
                    curve: istapped ? Curves.bounceOut : Curves.ease,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.7),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Funpage2',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                          Icon(
                            istapped
                                ? Icons.arrow_downward
                                : Icons.arrow_upward,
                            color: Colors.white,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
