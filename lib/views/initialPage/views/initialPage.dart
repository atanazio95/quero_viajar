import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quero_viajar/views/initialPage/views/widgets/cardAnnouncement.dart';
import 'package:quero_viajar/views/widgets/appBar.dart';
import 'package:quero_viajar/views/widgets/bottonBar.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Sua empresa'),
      body: Container(
        child: ListView(
          children: [
            CardAnnouncement(colorCard: Colors.black),
            CardAnnouncement(colorCard: Colors.red),
            CardAnnouncement(colorCard: Colors.green),
            CardAnnouncement(colorCard: Colors.white),
            CardAnnouncement(colorCard: Colors.blueGrey)
          ],
        ),
      ),
      bottomNavigationBar: CustonBottonAppBar(),
    );
  }
}
