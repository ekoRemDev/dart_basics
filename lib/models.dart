class Human{
  String name;
  int year;


  Human(this.name, this.year);


  String get getName{
    return name;
  }

  int get getYear{
    return year;
  }


  set setName(String givenName){
    name = givenName;
  }

  set setYear(int birthYear){
    year = birthYear;
  }


  Map<String,dynamic> get map{
    return {
      "name" : name,
      "year" : year
    };
  }



  void run(){
    print(this.name + " is running ");
}

  void setNewName(String s) {
    name = s;
  }



}