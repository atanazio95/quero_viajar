import 'package:flutter/material.dart';

class CardAnnouncement extends StatefulWidget {
  final Color colorCard;
  const CardAnnouncement({super.key, required this.colorCard});

  @override
  State<CardAnnouncement> createState() => _CardAnnouncementState();
}

class _CardAnnouncementState extends State<CardAnnouncement> {
  @override
  Widget build(BuildContext context) {
    final heigthScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0, top: 1),
      child: Container(
        decoration: BoxDecoration(
            // color: Colors.grey,
            border: Border.all(
          width: widthScreen * 0.002,
        )),
        height: heigthScreen * 0.2,
        width: widthScreen * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2023/02/221223090704-03-bugatti-chiron-profilee.jpg?w=1024',
            ),
            const Text(
              'Seu anuncio',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
