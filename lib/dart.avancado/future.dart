/*
Um Future representa uma operação assicrona que retornará um único valor no futuro ou um erro

Quando Usar?
- Quando você espera um único resultado
- ex: Buscar dados da internet, ler um arquivo uma única vez, salvar dados no banco

Caracteristicas:
- Executa uma vez e finaliza
- Pode retornar sucess (then) ou errio (catError)
- Pode ser guardado com await
 */

//exemplo 1
Future<String> fetchData(){
  /* return Future.delayed(Duration(seconds: 2), () => "Dados carregados"); */
  return Future.delayed(Duration(seconds: 2), ()=> throw Exception("Falha ao buscar recursos"));
  }

  //exemplo 2
  Future<bool> fazerLogin(String usuario, String senha) async{
    await Future.delayed(Duration(seconds: 2));
    if(usuario == 'admin' && senha == '1234'){
      return true;
    }

    throw Exception("Usuario/senha não conferem");
  }
 void main(List<String> args) async{
  /* final dados = await fetchData();
  print(dados);
*/
/* final sucesso = await fazerLogin('admin', '1234');
print(sucesso); */

//exemplo 3 Localização
/*  Future<String> obterLocalizacao() async{
  await Future.delayed(Duration(seconds: 2));
  return "Lat: -23.0000 Long: -48.0000";
 }

 //exemplo 3
 final local = await obterLocalizacao();
 print(local); */

 //Tratando erros
/*  try{
  //codigo a ser executado caso funcione
  final dados = await fetchData();
  print(dados);
 }catch(erro){
  //codigo a ser executado caso falhe
  print(erro.toString());
 } */

 try{
  final sucesso = await fazerLogin('admin', '123');
  print(sucesso);
 }catch(e){
  print("Erro no login: $e");
 }
 }