void main() {
//Entrar via teclado com o valor de cinco produtos. Após as entradas, digitar um valor referente ao
//pagamento da somatória destes valores. Calcular e exibir o troco que deverá ser devolvido.
  
double produto1 = 1;
double produto2 = 3;
double produto3 = 2;
double produto4 = 1;
double produto5 = 1;
 
double pagamentoCliente = 10;
  
 double calcTroco(num1,num2,num3,num4,num5, pagarCliente){
   double soma = produto1+produto2+produto3+produto4+produto5;
   
   double troco = pagarCliente - soma;
   
   return troco;
 }
  
  double total = calcTroco(produto1,produto2,produto3,produto4,produto5, pagamentoCliente);
  
  print("Seu troco é de: $total reais");
  
}