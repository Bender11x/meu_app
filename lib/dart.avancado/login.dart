import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _status = "Aguardando...";
  bool _carregando = false;

  // Sempre que trabalhar com tarefas assíncronas no Flutter use initState
  @override
  void initState() {
    super.initState();
  }

  // Simulação do login
  Future<bool> autenticar(String usuario, String senha) async {
    await Future.delayed(Duration(seconds: 2));
    return usuario == 'admin' && senha == 'admin';
  }

  void _fazerLogin() async {
    setState(() {
      _carregando = true;
      _status = "Processando...";
    });

   bool sucesso = await autenticar('admin', 'admin');

    setState(() {
      _carregando = false;
      _status = sucesso ? "Login Bem Sucedido" : "Falha no login";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login com Flutter")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_carregando) CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(_status, style: TextStyle(fontSize: 18)),
            SizedBox(height: 48),
            ElevatedButton(
              onPressed: _carregando ? null : _fazerLogin,
              child: Text("Simular Login"),
            ),
          ],
        ),
      ),
    );
  }
}
