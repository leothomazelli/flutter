void main() {
//Entrar com o peso e a altura de uma determinada pessoa. 
//Após a digitação, exibir se esta pessoa está ou não com seu peso ideal. Fórmula: peso/altura².

  double peso = 84;
  double altura = 1.74;
  
  String pessoa = "Masculino";
   
  double imc = peso/(altura*altura);
  print(imc);
  
  if(pessoa == "Masculino"){
    if(imc < 20){
      print("Abaixo do peso");
    }
    if(20<= imc && imc < 25){
      print("Peso ideal");
    }
    if(imc >= 25){
      print("Acíma do peso");
    }
  }
  
 
  
}