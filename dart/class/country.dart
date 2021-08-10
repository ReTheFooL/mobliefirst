class Country{
  // คือ property
  var name;
  var language;
  var _animal;
  static var city = "Tokyo";
  var color ="ขาว แดง";

  // Constructor
  Country(this.name,this.language);
  // Constructor name
  //Country.language(String name,String language):this(name,language);

// method
  String showLanguage() => this.language;
  
// Function setter
void setAnimal(String animal) => this._animal = animal;
// Function getter
String getAnimal() => this._animal;

static void callHello() => print("こんにちは");

void getPeople() => print("คนในประเทศ : 126.3 ล้านคน");

}
