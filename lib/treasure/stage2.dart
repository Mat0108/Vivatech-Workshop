import 'package:flutter/material.dart';
import 'package:vivatech/components/game/gameContainerWithCharacter.dart';
import 'package:vivatech/components/game/quitGameContainer.dart';
import 'package:vivatech/components/topNavigation.dart';
import 'package:vivatech/treasure/treasure.dart';
import '../color.dart';
import 'stage3.dart';

const List<String> list = <String>[
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "J",
  "K",
  "L",
  "M"
];

class TreasureStage2 extends StatefulWidget {
  const TreasureStage2({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<TreasureStage2> createState() => _TreasureStage2State();
}

class _TreasureStage2State extends State<TreasureStage2> {
  @override
  bool showmap = false;
  bool showquit = false;
  String dropdown = list.first;
  String text =
      "Grace à la carte, nous savons où se trouve a peu pres la derniere étape. Serai tu capables de trouver l'allée du stand La Poste Groupe";
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: 480,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/fond.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Stack(children: [
        Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const TopNavigationComponent(currentPage: "treasure"),
            Container(
                width: 480,
                height: 600,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        width: 480,
                        height: 370,
                        child: GameContainerWithCharacterComponent(
                          tutorial: [text],
                          showNextButton: false,
                          gameName: "treasure1",
                          // game: const TreasureStage1()
                        )),
                    Positioned(
                        width: 480,
                        height: 48,
                        top: 390,
                        left: 20,
                        child: Center(
                            child: Container(
                          width: 160,
                          height: 48,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: VivatechColor.blue),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                showmap = true;
                              });
                            },
                            child: const Text("Afficher la carte",
                                style: TextStyle(
                                    fontSize: 18, color: VivatechColor.white)),
                          ),
                        ))),
                    if (showmap)
                      Positioned(
                          width: 390,
                          height: 300,
                          top: 200,
                          left: 20,
                          child: Container(
                            width: 390,
                            height: 300,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/pages/treasure/map.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: VivatechColor.white),
                          )),
                    if (showmap)
                      Positioned(
                          top: 200,
                          left: 0,
                          child: Container(
                            width: 55,
                            height: 55,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                                color: VivatechColor.white,
                                border: Border.all(
                                    color: VivatechColor.blue, width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90))),
                            child: Ink(
                              child: IconButton(
                                  iconSize: 30,
                                  icon: const Icon(Icons.close),
                                  color: VivatechColor.blue,
                                  onPressed: () {
                                    setState(() {
                                      showmap = false;
                                    });
                                  }),
                            ),
                          )),
                    Positioned(
                        top: 500,
                        width: 480,
                        child: Center(
                            child: Container(
                                width: 400,
                                height: 100,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Theme(
                                          data: Theme.of(context).copyWith(
                                              canvasColor: VivatechColor.blue),
                                          child: Container(
                                            width: 80,
                                            height: 50,
                                            decoration: const BoxDecoration(
                                                color: VivatechColor.blue,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15))),
                                            child: DropdownButton<String>(
                                              value: dropdown,
                                              icon: const Icon(
                                                  Icons.arrow_downward),
                                              elevation: 8,
                                              isExpanded: true,
                                              itemHeight: null,
                                              style: const TextStyle(
                                                color: VivatechColor.white,
                                              ),
                                              underline: Container(
                                                height: 2,
                                                color: VivatechColor.black,
                                              ),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdown = value!;
                                                });
                                              },
                                              items: list.map<
                                                      DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Center(
                                                      child: Text(
                                                          value.toString())),
                                                );
                                              }).toList(),
                                            ),
                                          )),
                                      Container(
                                        width: 110,
                                        height: 48,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: VivatechColor.purple),
                                        child: TextButton(
                                          onPressed: () {
                                            if (dropdown == "H" ||
                                                dropdown == "J") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const TreasureStage3()));
                                            }
                                          },
                                          child: const Text("Valider",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: VivatechColor.white)),
                                        ),
                                      ),
                                      Container(
                                        width: 110,
                                        height: 48,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: VivatechColor.pink),
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              showquit = true;
                                            });
                                          },
                                          child: const Text("Quitter",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: VivatechColor.white)),
                                        ),
                                      )
                                    ]))))
                  ],
                ))
          ],
        ),
        if (showquit)
          Positioned(
              bottom: 0,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                  ),
                  child:
                      const QuitGameContainerComponent(gameName: "treasure")))
      ])),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
