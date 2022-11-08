import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),                                                 
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool obscureText = true;

  IconData iconPassword = Icons.visibility_off;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text("Bem-vindo",
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)),
              const SizedBox(
                height: 30,
              ),
              Text("Faça login para continuar", style: TextStyle(),),
              const SizedBox(
                height: 120,
              ),
              const Icon(
                Icons.account_circle,size: 180
              ),
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person), 
                  hintText: "Usuário",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                obscureText: obscureText,
                decoration:InputDecoration(
                  hintText: "Senha",
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: IconButton( 
                    onPressed: (){
                      if (obscureText == true){
                        setState(() {
                          obscureText = false;
                          iconPassword = Icons.visibility_off;
                        });
                      } else{
                        setState(() {
                          obscureText = true;
                          iconPassword = Icons.visibility;
                        });
                      }
                    },
                  icon: Icon(iconPassword)),
                )
              ),
              const SizedBox(
                height: 40,
              ),
              Text("Esqueceu a senha?", style: TextStyle(),),
              SizedBox(height: 50),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {}, 
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 28,
                  horizontal: 220,
                ),
             
              child: Text("Login".toUpperCase(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),),),
              const SizedBox(
                height: 40,
              ),
              Text("Ainda não tem conta? Clique aqui para criar conta", style: TextStyle(),),]
          ),
        ),
      ),
       
    );
  }
}
