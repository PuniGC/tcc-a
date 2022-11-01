import 'package:atomoon/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _password = " ";
  bool esconderTexto = true;
  bool esconderTexto2 = true;
  var formKey = GlobalKey<FormState>();
  Color shadowColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(child: Container()),
          ],
        ),
        body: Center(
            child: Form(
                key: formKey,
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(children: [
                              Text(
                                "Atomoon",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 36, 58, 105),
                                  letterSpacing: -1.2),
                              ),
                            ])),
                        SizedBox(height: 15),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(bottom: 0),
                            child: Column(children: [
                              const Text(
                                "Entrar",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                            ])),
                        Material(
                          elevation: 8,
                          shadowColor: shadowColor,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'E-mail',
                              prefixIcon: Padding(
                                child: Icon(Icons.email_rounded,
                                    color: Color.fromRGBO(36, 58, 105, 1)),
                                padding: EdgeInsets.all(5),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                setState(() {
                                  shadowColor = Colors.transparent;
                                });
                                return 'E-mail obrigatório';
                              }
                              setState(() {
                                shadowColor = Colors.black;
                              });
                            },
                          ),
                        ),
                        Material(
                          elevation: 8,
                          shadowColor: shadowColor,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              prefixIcon: const Padding(
                                child: Icon(
                                  Icons.key,
                                  color: Color.fromRGBO(36, 58, 105, 1),
                                ),
                                padding: EdgeInsets.all(5),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5)),
                              suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Color.fromRGBO(36, 58, 105, 1),
                                  ),
                                  onPressed: (() => setState(() {
                                        esconderTexto = !esconderTexto;
                                      }))),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                setState(() {
                                  shadowColor = Colors.transparent;
                                });
                                return 'Senha obrigatória';
                              }
                              setState(() {
                                shadowColor = Colors.black;
                              });
                            },
                            onSaved: (val) => _password = val,
                            obscureText: esconderTexto,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child:
                            TextButton(
                              onPressed: () {},
                            child: Text(
                              "Esqueci minha senha",
                              textAlign: TextAlign.right,

                            )
                            )
                        ),
                        Container(
                          margin:
                              (const EdgeInsets.only(top: 15, left: 25, right: 25)),
                          height: 50,
                          width: 200,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(36, 58, 105, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))),
                          child: TextButton(
                              child: const Center(
                                child: Text(
                                  'Entrar',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const HomeScreen()));
                                }
                              }),
                        ),
                      ],
                    )))));
  }
}
