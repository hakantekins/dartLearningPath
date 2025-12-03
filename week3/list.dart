void  main (){
  List<double> customers = List.generate(10, (index){
    return index + 5 ;
  });
  for (int i = 0; i < customers.length ; i++) {
    
    if(customers[i] > 10 ){
      print('${i+1} nolu müşterimiz krediniz hazır!');
      print('müşteri parası: ${customers[i]}');
    }
    else{
      print('${i+1} nolu müşterimiz üzgünüz size kredi veremiyoruz!');
    }    
  }
} 