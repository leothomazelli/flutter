void main() {

/*
 * Entrar via teclado com um valor (X) qualquer. 
 * Digitar o intervalo que o 
 * programa que deverá calcular a tabuada do 
 * valor X digitado, sendo que o segundo valor (B), 
 * deverá ser maior que o primeiro (A).
 *  Exibir a tabuada do valor digitado, 
 * no intervalo decrescente, 
 * ou seja, a tabuada de X no intervalo de B para A.
 * */
  
  double x = 4;
  double b = 10;
  double a = 5;
  
  
  //tabuada do valor X
  //ir de b até a, decrescente
  
  for(b; b >= a; b--){
    
    double total = x*b;
    print("$x X $b = $total");
  }
  
}

