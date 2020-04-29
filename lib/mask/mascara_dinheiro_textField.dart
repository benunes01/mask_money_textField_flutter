String mask_money_textField(String valueForMask) {
  String value = '';
  String afterTheComma = '';
  value = valueForMask.replaceAll('.', ',').split(',')[0];

  if(valueForMask.replaceAll('.', ',').contains(',')){
    afterTheComma = valueForMask.replaceAll('.', ',').split(',')[1];
  }
  var oldValue = '';
  var dotValue = '';
  var valueSoFar = '';

  print(valueForMask);
  //To know where to start with the point
  var wherePutDot = value.length % 3;
  if(wherePutDot == 0) {
    wherePutDot = 3;
  }

  //If it is less than 3 you don't need a point
  if(value.length > 3){
    //Put the dot 3 in 3
    for(wherePutDot; wherePutDot <= value.length;){
      oldValue = value.substring(wherePutDot<4 ? 0 : wherePutDot - 3, wherePutDot) + '.';
      valueSoFar = valueSoFar + oldValue;

      wherePutDot = wherePutDot + 3;
    }
  }else{
    dotValue = value;
  }

  if(value.length>3){
    dotValue = valueSoFar.substring(0, valueSoFar.length - 1);
  }


  //If it has value after the comma, it must have the comma, if it is not empty at all
  if(afterTheComma.length > 0){
    afterTheComma = ',' + afterTheComma;
  }

  return dotValue + afterTheComma;
}