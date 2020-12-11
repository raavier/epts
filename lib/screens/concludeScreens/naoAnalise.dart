import 'package:epts/components/concluseContainer.dart';
import 'package:epts/config/constants.dart';
import 'package:epts/config/pallete.dart';
import 'package:epts/screens/home.dart';

import 'package:flutter/material.dart';

class NaoAnalise extends StatelessWidget {
  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => NaoAnalise(),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Palette.darkGreen,
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
                ConcluseContainer(
                    borderColor: Palette.darkGreen,
                    content:
                        'Não é necessário emitir PTS\n\nUtilize análise de risco da tarefa.',
                    height: 230,
                    fontSize: 28),
              ],
            ),
          ),
        ));
  }
}
