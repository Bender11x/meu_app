//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meu_app/dart.avancado/isolate/product_parse.dart';
//import 'package:meu_app/dart.avancado/login.dart';
//import 'package:meu_app/dart.avancado/stream/busca_com_stream.dart';
//import 'package:meu_app/Botao.dart';
//import 'package:meu_app/Debug.dart';
//import 'package:meu_app/MaterialWidget/MyMaterial.dart';
//import 'package:meu_app/cupertino/MyCupertino.dart';
//import 'package:meu_app/exercicios/ExercicioMaterial.dart';
//import 'package:meu_app/exercicios/Loja.dart';
//import 'package:meu_app/inherited/UserInfos.dart';
//import 'package:meu_app/navegacao/Routes.dart';
/* import 'package:meu_app/navegacao/Tela1.dart';
import 'package:meu_app/stateful/Contador.dart';
import 'package:meu_app/stateful/DarkMode.dart';
import 'package:meu_app/stateful/RandomNumber.dart';
import 'package:meu_app/stateless/SemEstado.dart';
import 'package:meu_app/stateless/User.dart';
import 'package:meu_app/usandoAssets/Fonts.dart';
import 'package:meu_app/usandoAssets/Imagem.dart';
import 'package:meu_app/widgetsLayout/LayoutApp.dart';
 */
/* void main() {
  runApp(Container(
    child: Text(
      "Bem vindo ao Flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.lime, fontSize: 30.0),
    ),
  ));
} */

/**
 * NO FLUTTER TEMOS 3 TIPOS DE ESTADOS DE APLICAÇÃO
 * STATELESS (ESTADO IMUTÁVEL)
 * A UI NUNCA MUDA APÓS SER CONSTRUÍDA
 * É USADO PARA COMPONENTES ESTÁTICOS COMO ÍCONES, TEXTOS FIXOS E ETC.
 * 
 * STATEFUL (ESTADO LOCAL)
 * A UI MUDA QUANDO O ESTADO INTERNO MUDA
 * É USADO EM WIDGETS QUE TEM INTERAÇÃO COM O USUÁRIO, COMO ENTRADAS DE TEXTOS, CARREGAMENTO DE DADOS, ANIMAÇÕES E ETC
 * 
 * INHERITED (ESTADO HERDADO)
 * COMPARTILHA DADOS DESCENDENTES NA ÁRVORE DE WIDGETS
 * ÚTIL PARA DADOS GLOBAIS LEVES COMO TEMAS, IDIOMAS E ETC
 */

void main(){
  // runApp(SemEstado());
/*   runApp(MaterialApp(
    home: Center(
      child: Botao(),
    ),
  )); */

  // runApp(User());

  //exemplo stateful

/*   runApp(MaterialApp(
    home: Contador(),
  )); */

  // runApp(DarkMode());
  // runApp(RandomNumber());

  // runApp(UserInfos());
  // runApp(Loja());

  // runApp(MyMaterial());
  // runApp(ExercicioMaterial());

  //cupertino
  // runApp(MyCupertino());

  //como decidir qual widget usar?

/*   if(Platform.isAndroid){
    runApp(MyMaterial());
  }else{
    runApp(MyCupertino());
  } */

//  runApp(LayoutApp());
  // runApp(Imagem());

  // runApp(const MaterialApp(home: Debug(numeroMaximo: 10)));

  //navegando entre telas
  // runApp(MaterialApp(home: Tela1(),));
  //runApp(Routes());

  //runApp(MaterialApp(home: Login()));

  // runApp(MaterialApp(home: BuscaComStream()));

  runApp(MaterialApp(home: ProductParse()));
}


