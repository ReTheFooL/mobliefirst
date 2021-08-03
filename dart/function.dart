void main() {
  var resultGen = callGen(2000);
  print(resultGen);

  int resultColor = callColor("pink");
  print(resultColor);
  callWeb("YouTube", port : "443" , protocal:"https");
}

String callGen(int year){
  //print(year);
  var x= (year >= 1996) ? "Gen Z" : "Gen Y or Upper" ;
  return x;
}

int callColor([String newColor = "black"]){
  List<String> colors = ["red","blue","green"];
  colors.add(newColor);

  for (var item in colors) {
    print(item);
  }
  return colors.length;
}

void callWeb(String web,{String protocal= "http",String port = "80"}) => print("$web $protocal $port") ;