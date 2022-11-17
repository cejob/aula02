import 'dart:html';
import 'dart:js_util';

import 'package:aula02/widget/eleveted_button_custom.dart';
import 'package:aula02/widget/text_form_field_custom.dart';
import 'package:flutter/material.dart';

enum StringCharater {masculino, feminino}

class RegiterPage extends StatefulWidget {
  const RegiterPage({super.key, required this.title});

  final String title;

  @override
  State<RegiterPage> createState() => _RegiterPageState();
}

class _RegiterPageState extends State<RegiterPage> {
  bool obscureText = true;
  StringCharater? genero = StringCharater.feminino;
 

  @override
  Widget build(BuildContext context) {
    print("BUILD ENTREI");
    
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text("Preencha os dados para se Cadastrar"),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldCustom(
                  description: 'Nome',
                  prefixIcon: const Icon(Icons.person, color: Colors.black),
                ),
                const SizedBox(height: 15),
                TextFormFieldCustom(
                  description: 'E-mail',
                  prefixIcon: const Icon(Icons.email, color: Colors.black),
                ),
                const SizedBox(height: 25),
                Divider(color: Colors.black),
                const SizedBox(height: 25),
                const Text("Genero",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: RadioListTile<StringCharater>(
                        value: StringCharater.masculino,
                        title: Text("Masculino"), 
                        groupValue: genero,
                        onChanged: (StringCharater? topera) {
                          setState(() {
                            genero = topera;
                          }); 
                          },
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: RadioListTile<StringCharater>(
                        value: StringCharater.feminino,
                        title: Text("Feminino"), 
                        groupValue: genero,
                        onChanged: (StringCharater? topera) {
                          setState(() {
                            genero = topera;
                          }); 
                          },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Divider(color: Colors.black),
                const SizedBox(height: 25),
                TextFormFieldCustom(
                  description: 'Telefone',
                  prefixIcon:
                      const Icon(Icons.call, color: Colors.black),
                ),
                const SizedBox(height: 25),
                TextFormFieldCustom(
                  description: 'Data Nacimento',
                  prefixIcon:
                      const Icon(Icons.calendar_month, color: Colors.black),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: TextFormFieldCustom(
                        description: 'Cidade',
                        prefixIcon:
                            const Icon(Icons.business, color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 25),
                    SizedBox(
                      width: 160,
                      child: TextFormFieldCustom(
                        description: 'Estado',
                        prefixIcon:
                            const Icon(Icons.business, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Divider(color: Colors.black),
                const SizedBox(height: 25),
                TextFormFieldCustom(
                  obscureText: obscureText,
                  description: 'Senha',
                  prefixIcon: const Icon(Icons.key, color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldCustom(
                  obscureText: obscureText,
                  description: 'Repetir senha',
                  prefixIcon: const Icon(Icons.key, color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 50),
                const ElevetedButtonCustom(description: "Criar conta"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle,color: Colors.blue,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 36),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Estou de acordo com os',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: ' termos e obrigações',
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ],
                      ),
                      textScaleFactor: 0.5,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Genero {
} //125
