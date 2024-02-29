import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quero_viajar/views/widgets/appBar.dart';
import 'package:quero_viajar/views/widgets/bottonBar.dart';
import 'package:quero_viajar/views/widgets/textFormFieldDefault.dart';

class MyConfigPage extends StatefulWidget {
  const MyConfigPage({super.key});

  @override
  State<MyConfigPage> createState() => _MyConfigPageState();
}

class _MyConfigPageState extends State<MyConfigPage> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(title: 'My config'),
      bottomNavigationBar: CustonBottonAppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi, Fulano!',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: altura * 0.2,
            width: largura * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Colors.grey),
                  height: altura * 0.5,
                  width: largura * 0.3,
                  child: const Text(
                    "Foto",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Your name",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Type",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Type profile",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: altura * 0.1),
            child: Column(
              children: [
                const ButtomClassic(text: "Profile", icon: Icons.person),
                const ButtomClassic(text: "Settings", icon: Icons.settings),
                const ButtomClassic(
                    text: "Announcement", icon: Icons.analytics),
                const ButtomClassic(text: "Finance", icon: Icons.money),
                Padding(
                  padding: EdgeInsets.only(top: altura * 0.08),
                  child:
                      const ButtomClassic(text: "Logout", icon: Icons.logout),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtomClassic extends StatelessWidget {
  final String text;
  final IconData icon;
  const ButtomClassic({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            backgroundColor: Colors.black),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
