// conference_details_page.dart
import 'package:flutter/material.dart';
import 'conference.dart';

class ConferenceDetailsPage extends StatelessWidget {
  // Instanciation de la conférence avec des valeurs spécifiques
  Conference conference = Conference(
    'Ma conférence',
    'Description de ma conférence kkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh ggggg'
        'ggggggg dddddd kkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dd'
        'dddd kkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd kkkk'
        'kkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd kkkkkkkk lllllll'
        'lll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd kkkkkkkk llllllllll mmmmmm'
        'mmmmmm jjjjjjjjjj hhhhhhhhhhh ggggg'
        'ggggggg ddddddkkkkkkkk llllllllll mmmmmmmmmmmm jjjjjjjjjj hhhhhhhhhhh gggggggggggg dddddd',
    [
      Presenter('Présentateur 1', 'images/pres1.png'),
      Presenter('Présentateur 2', 'images/pres1.png'),
      Presenter('Présentateur 3', 'images/pres1.png'),
      Presenter('Présentateur 4', 'images/pres1.png'),
      Presenter('Présentateur 5', 'images/pres1.png'),
      Presenter('Présentateur 6', 'images/pres1.png'),
      Presenter('Présentateur 7', 'images/pres1.png'),
      Presenter('Présentateur 8', 'images/pres1.png'),
      Presenter('Présentateur 9', 'images/pres1.png'),
      Presenter('Présentateur 10', 'images/pres1.png'),
      Presenter('Présentateur 11', 'images/pres1.png'),
      Presenter('Présentateur 12', 'images/pres1.png'),
      Presenter('Présentateur 13', 'images/pres1.png'),
      Presenter('Présentateur 14', 'images/pres1.png'),
      Presenter('Présentateur 15', 'images/pres1.png'),
      Presenter('Présentateur 16', 'images/pres1.png'),
      Presenter('Présentateur 17', 'images/pres1.png'),
      Presenter('Présentateur 18', 'images/pres1.png'),
    ],
  );

  ConferenceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // Ajouter une image de fond qui s'applique à tous les enfants
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  padding: const EdgeInsets.all(3),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: myProfilePic(30),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        conference.name.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 10,
                        child: const Icon(
                          Icons.check,
                          size: 12,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Container(
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 30),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          RowPink('Description'),
                          PadDescription(conference.description),
                          RowPink('Présenteurs'),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                for (var i = 0;
                                    i < conference.presenters.length;
                                    i += 3)
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      for (var j = i;
                                          j < i + 3 &&
                                              j < conference.presenters.length;
                                          j++)
                                        FriendsImage(
                                          conference.presenters[j].name,
                                          conference.presenters[j].imageURL,
                                          width / 3.5,
                                        ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ))),
            )
          ])),
    );
  }

  Container myProfilePic(double radius) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.lightGreenAccent,
          // Spécifier la couleur de la bordure ici
          width: 2,
        ),
        color: Colors.white, // Spécifier la couleur de fond ici
      ),
      child: CircleAvatar(
        foregroundColor: null,
        backgroundColor: Colors.transparent,
        radius: radius,
        backgroundImage: const AssetImage("images/futur.png"),
      ),
    );
  }

  Row RowPink(String text) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding PadDescription(String text) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }


  Container myPic(double radius, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          // Spécifier la couleur de la bordure ici
          width: 2,
        ),
        color: Colors.white, // Spécifier la couleur de fond ici
      ),
      child: CircleAvatar(
        foregroundColor: null,
        backgroundColor: Colors.transparent,
        radius: radius,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }

  Column FriendsImage(String name, String imagePath, double width) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          width: width,
          height: width,
          child: myPic(50, imagePath),
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
      ],
    );
  }
}