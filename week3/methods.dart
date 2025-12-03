void main (){
  print(convertToEuro(4000));
  print(convertToDolar(4000));
  print(convertToSterlin(4000,55));
  print(convertToCanadianDollar(4000));
  print(convertToCanadianDollar(4000, 35));
}
int convertToEuro (int customerMoney){
  return customerMoney ~/ 48;
}
int convertToDolar( int customerMoney , {int dolarIndex = 41}){
  return customerMoney ~/ dolarIndex;
}
int convertToSterlin(int customerMoney, int sterlinIndex){
  return customerMoney ~/ sterlinIndex;
}
int convertToCanadianDollar(int customerMoney, [int canadianIndex = 30]) {
  return customerMoney ~/ canadianIndex;
}