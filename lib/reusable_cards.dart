import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  ReusableCards({@required this.cor, this.cardChild, this.onPress});

  final Color cor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: cor),
      ),
    );
  }
}
