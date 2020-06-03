import 'package:flutter/material.dart';
import 'consts.dart';


class IconCard extends StatelessWidget {
  IconCard({@required this.icone, @required this.texto});

  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icone,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          texto,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}