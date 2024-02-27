import 'package:flutter/material.dart';
import 'package:quero_viajar/views/widgets/bottonDefault.dart';
import 'package:quero_viajar/views/widgets/textFormFieldDefault.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController cpfTextController = TextEditingController();
  final TextEditingController rgTextController = TextEditingController();
  final TextEditingController nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.red)),
              child: Text(
                'Cadastro',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
          TextFormFieldDefault(
              controllerTextformField: cpfTextController, labelText: 'CPF'),
          TextFormFieldDefault(
              controllerTextformField: rgTextController, labelText: 'RG'),
          TextFormFieldDefault(
              controllerTextformField: nameTextController,
              labelText: 'Nome completo'),
          BottonDefault(text: 'Cadastrar', onTap: () {})
        ],
      ),
    );
  }
}
