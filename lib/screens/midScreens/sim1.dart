import 'package:epts/components/elevatedButton.dart';
import 'package:epts/components/questionContainerItem.dart';
import 'package:epts/components/questionContainer.dart';
import 'package:epts/config/constants.dart';
import 'package:epts/config/pallete.dart';
import 'package:epts/screens/concludeScreens/analise.dart';
import 'package:epts/screens/home.dart';
import 'package:epts/screens/midScreens/sim1nao1.dart';
import 'package:epts/screens/midScreens/sim2.dart';
import 'package:flutter/material.dart';

class Sim1 extends StatelessWidget {
  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => Sim1(),
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
                    content: 'A atividade envolve algum dos seguintes itens:',
                    height: 100,
                    fontSize: 25),
                QuestionContainerItem(
                    content: 'Trabalho em Altura', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Trabalho a Quente', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Inflamáveis', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Explosivos', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Içamento de Carga', height: 50, maxLine: 2),
                QuestionContainerItem(
                    content: 'Escavação', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Bloqueio, identificação e zero energia',
                    height: 95,
                    maxLine: 3),
                QuestionContainerItem(
                    content:
                        'Remoção de guarda ou Proteção de máquinas e equipamentos ou acesso',
                    height: 120,
                    maxLine: 4),
                QuestionContainerItem(
                    content: 'Abertura de linhas e equipamentos',
                    height: 95,
                    maxLine: 2),
                QuestionContainerItem(
                    content: 'Espaço confinado', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Trabalhos elétricos', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Radiotividade', height: 60, maxLine: 2),
                QuestionContainerItem(
                    content: 'Hidrojato', height: 60, maxLine: 2),
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
                        rota: Analise.route,
                        title: 'Sim',
                        colorButton: Palette.darkGreen)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Button(
                    rota: Sim1Nao1.route,
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
