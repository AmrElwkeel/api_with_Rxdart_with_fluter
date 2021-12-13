


class Users{

  // "id": 1,
  // "name": "Leanne Graham",
  // "username": "Bret",
  // "email": "Sincere@april.biz",



  final int? id ;
  final String? name ;
  final String? username ;
  final String? email ;


  Users({
    this.id,
    this.name,
    this.email,
    this.username,
});


  Users.fromJson(Map<String , dynamic> json) :
       id = json["id"],
       name = json["name"],
       username = json["username"],
       email = json["email"];





}