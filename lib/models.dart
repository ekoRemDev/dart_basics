class Human{
  String name;
  int year;



  Human(this.name, this.year);


  String get humanName{
    return name;
  }

  int get humanYear{
    return year;
  }


  set humanName(String givenName){
    name = givenName;
  }

  set humanYear(int birthYear){
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



}