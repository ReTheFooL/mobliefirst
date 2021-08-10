import 'country.dart';
import 'problem.dart';

class City extends Country with Problem{

  var city;

  City(this.city):super("Japan","Japanese");

  void callSuper(){
    super.getPeople();
    //super.color;
  }

  @override
  void showPeople(){
    print("คนในจังหวัด $city มี 9 ล้านคน");
  }

}