class Person{
  final String name;
  final int age;
  final String email;

  Person({required this.name, required this.age, required this.email});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name : json['name'] ,
      age : json['age'] ,
      email : json['email'] ,

    );
  }

}