import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String exchangeName;
  final String exchangeDescription;
  final String date;
  DetailsPage(
      {super.key,
      required this.image,
      required this.exchangeName,
      required this.exchangeDescription,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              image,
              width: 64,
              height: 64,
            ),
            Text(
              "${exchangeName}\n${date}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("${exchangeDescription}")
          ],
        ),
      ),
    );
  }
}
