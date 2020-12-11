import 'package:epts/screens/home.dart';
import 'package:epts/components/infoItem.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  InfoPage({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => InfoPage(),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              //Icons.arrow_back_ios_rounded,
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pushReplacement(Home.route),
          ),
          title: Text('Informações'),
        ),
        body: Container(
          child: ListView(
            children: [
              InfoItem(
                title: "Desenvolvido por: ",
                height: 125,
                content:
                    "Gestão Informação e Inovação Sul e Segurança do Trabalho Itabira",
                fontSize: 20,
              ),
              SizedBox(
                height: 4,
              ),
              InfoItem(
                title: 'Objetivo: ',
                content:
                    'Indicar quando a PTS se faz necessário ou não na atividade.',
                height: 130,
                fontSize: 20,
              ),
            ],
          ),
        ));
  }
}
