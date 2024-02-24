import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: SizedBox(
              height: altura * 0.1,
              width: largura * 1,
            ),
          ),
          Container(
            width: largura * 0.9,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: altura * 0.003, bottom: altura * 0.003),
                  child: Text('Entrar ou cadastra-se'),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'What do people call you?',
                    labelText: 'Login',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'What do people call you?',
                    labelText: 'Senha',
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: altura * 0.03),
                  height: altura * 0.1,
                  width: largura * 0.9,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: altura * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: largura * 0.35,
                        color: Colors.grey,
                      ),
                      Container(
                        width: largura * 0.2,
                        child: const Text(
                          textAlign: TextAlign.center,
                          'ou',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: largura * 0.35,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: altura * 0.03),
                  height: altura * 0.1,
                  width: largura * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: largura * 0.15,
                        ),
                        const Text(
                          'Continuar com email',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: altura * 0.03),
                  height: altura * 0.1,
                  width: largura * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.apple),
                        SizedBox(
                          width: largura * 0.15,
                        ),
                        const Text(
                          'Continuar com Apple',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: altura * 0.03),
                  height: altura * 0.1,
                  width: largura * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.mark_email_read),
                        SizedBox(
                          width: largura * 0.15,
                        ),
                        const Text(
                          'Continuar com Google',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: altura * 0.03),
                  height: altura * 0.1,
                  width: largura * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.facebook),
                        SizedBox(
                          width: largura * 0.15,
                        ),
                        const Text(
                          'Continuar com Facebook',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
