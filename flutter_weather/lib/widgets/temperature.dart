import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  final double temprature;
  final double low;
  final double high;

  Temperature({
    Key key,
    this.temprature,
    this.low,
    this.high,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(
            '${_formattedTemprature(temprature)}°',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'max: ${_formattedTemprature(high)}°',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
            Text(
              'min: ${_formattedTemprature(low)}°',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  int _formattedTemprature(double temprature) => temprature.round();
}
