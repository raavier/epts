import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color colorButton;
  final MaterialPageRoute rota;

  Button({
    Key key,
    @required this.rota,
    @required this.title,
    @required this.colorButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(rota);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colorButton)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
        child: Text(title, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
