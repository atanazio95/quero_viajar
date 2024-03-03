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
      appBar: const CustomAppBar(title: 'My settings'),
      bottomNavigationBar: CustonBottonAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 24),
            child: Row(
              children: [
                SizedBox(
                  width: largura * 0.1,
                ),
                Text(
                  'Hi, Michael J.!',
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    height: altura * 0.5,
                    width: largura * 0.3,
                    child: Image.asset("lib/assets/avatar-de-perfil.png")),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Michael Jackson",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Your name",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Seller",
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
            padding: EdgeInsets.only(top: altura * 0.05),
            child: ListView(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              children: const [
                ButtomClassic(text: "Profile", icon: Icons.person),
                ButtomClassic(text: "Settings", icon: Icons.settings),
                ButtomClassic(text: "Announcement", icon: Icons.analytics),
                ButtomClassic(text: "Finance", icon: Icons.money),
                ButtomClassic(text: "Logout", icon: Icons.logout)
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
    return Container(
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.grey,
                ),
                const SizedBox(width: 18),
                Text(
                  text,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}
