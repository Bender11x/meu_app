/*
Uma stream representa uma fonte de eventos/dados que ocorrem ao longo do tempo.

Quando Usar?
- Quando você precisa escutar atualizações cotnínnuas.
- ex: GPS, mensagens de chat, digitação em tempo real, eventos de usuário

Caracteristicas:
- Pode emitir valores com yield
- Pode durar indefinidamente 
- Pode ser usada com listen ou awaitn for
- Devemos usar async* para delcarar as funções assicronas que retornam uma stream
 */

//Exemplo 1: Contador de tempo
/* Stream<int> contarTempo() async*{
  for(int i = 0; i < 10; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i; //yeld serve como um emissor, ele emite a nova informação para a stream,
    // como se fosse um retufn. Porém sem finalizar a função
  }
}

//Exemplo 2: Simulação de chat

Stream<String> mensagemChat() async*{
  yield 'oi';
  await Future.delayed(Duration(seconds: 1));
  yield 'oi';
  await Future.delayed(Duration(seconds: 1));
   yield 'tchau';
}

void main(List<String> args) {
  contarTempo().listen(
    (event) => print("Contagem: $event"),
    onDone: () => print("stream finalizada"),
  );

mensagemChat().listen(
  (mensagem) => print(mensagem),
  onDone: () => print("fim do chat"),
);
} */

//Exemplos com controle de erro try cath
Stream<int> contarTempo()async*{
  try{
    for(int i = 0; i < 10;++){
      await Future.delayed(Duration(seconds: 1));
      if(i == 3){
        throw Exception("Erro ao contar número: $i");
      }
      yield i;
    }
  }catch(e){
    print("Erro no contador de tempo: $e");
  }
}

void main(List<String> args) {
  contarTempo().listen(
    (event) => print("Número: $event"),
    onError: (erro) => print(erro),
    onDone: () => print("finalizado"),
    );
}