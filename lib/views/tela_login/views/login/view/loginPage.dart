import 'package:flutter/material.dart';
import 'package:quero_viajar/views/tela_login/views/register/views/registerPage.dart';
import 'package:quero_viajar/views/widgets/bottonDefault.dart';
import 'package:quero_viajar/views/widgets/textFormFieldDefault.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginTextController = TextEditingController();
  final TextEditingController passTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: SizedBox(
              height: altura * 0.2,
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
                  child: const Text('Entrar ou cadastra-se'),
                ),
                TextFormFieldDefault(
                  controllerTextformField: loginTextController,
                  labelText: 'Login',
                ),
                TextFormFieldDefault(
                  controllerTextformField: passTextController,
                  labelText: 'Senha',
                ),
                BottonDefault(
                  text: "Entrar",
                  onTap: () {},
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
                BottonDefault(
                    text: 'Cadastrar',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    })
                // Container(
                //   padding: EdgeInsets.only(top: altura * 0.03),
                //   height: altura * 0.1,
                //   width: largura * 0.8,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Icon(Icons.email),
                //         SizedBox(
                //           width: largura * 0.15,
                //         ),
                //         const Text(
                //           'Continuar com email',
                //           style: TextStyle(
                //               color: Colors.black, fontWeight: FontWeight.w600),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(top: altura * 0.03),
                //   height: altura * 0.1,
                //   width: largura * 0.8,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Icon(Icons.apple),
                //         SizedBox(
                //           width: largura * 0.15,
                //         ),
                //         const Text(
                //           'Continuar com Apple',
                //           style: TextStyle(
                //               color: Colors.black, fontWeight: FontWeight.w600),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(top: altura * 0.03),
                //   height: altura * 0.1,
                //   width: largura * 0.8,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         const Icon(Icons.mark_email_read),
                //         SizedBox(
                //           width: largura * 0.15,
                //         ),
                //         const Text(
                //           'Continuar com Google',
                //           style: TextStyle(
                //               color: Colors.black, fontWeight: FontWeight.w600),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(top: altura * 0.03),
                //   height: altura * 0.1,
                //   width: largura * 0.8,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         const Icon(Icons.facebook),
                //         SizedBox(
                //           width: largura * 0.15,
                //         ),
                //         const Text(
                //           'Continuar com Facebook',
                //           style: TextStyle(
                //               color: Colors.black, fontWeight: FontWeight.w600),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
