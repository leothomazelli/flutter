void main() {
// Entrar via teclado com o valor de uma temperatura em graus Celsius, 
//calcular e exibir sua temperatura equivalente em Fahrenheit.
//(3 °C × 9/5) + 32

  double graus = 5;
    
  double fahrenTransform(graus){
    
    var fheit = (graus* (9/5) + 32);
    
    return fheit;
  };
    
  var fihren = fahrenTransform(graus);
  
  
  print("$graus° em Fahrenheit é igual a: $fihren");
}