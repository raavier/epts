import 'package:epts/components/elevatedButton.dart';
import 'package:epts/components/questionContainer.dart';
import 'package:epts/config/constants.dart';
import 'package:epts/config/pallete.dart';
import 'package:epts/screens/home.dart';
import 'package:epts/screens/midScreens/nao1nao1nao1.dart';
import 'package:epts/screens/midScreens/sim1.dart';
import 'package:flutter/material.dart';

class Nao1Nao1 extends StatelessWidget {
  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => Nao1Nao1(),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor:
                Palette.darkGreen /* Color.fromRGBO(0, 126, 122, 1) */,
            accentColor: Colors.cyan[600],
            fontFamily: 'Open Sans',
            textTheme: TextTheme(
                headline1:
                    TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                headline6:
                    TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
                bodyText2: TextStyle(fontSize: 20.0, fontFamily: 'Open Sans'))),
        home: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 8, 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        Navigator.of(context).pushReplacement(Home.route),
                  ),
                  Text(
                    'é PTS?',
                    style: itemTitle,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            color: Colors.grey[100],
            child: ListView(
              children: [
                QuestionContainer(
                    content:
                        'É uma intervenção de manutenção em áreas de manutenção?',
                    height: 130,
                    fontSize: 25)
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Button(
                        rota: Sim1.route,
                        title: 'Sim',
                        colorButton: Palette.darkGreen)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Button(
                    rota: Nao1Nao1Nao1.route,
                    title: 'Não',
                    colorButton: Palette.darkRed,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
