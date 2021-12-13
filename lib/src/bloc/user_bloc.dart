import 'package:rxdart/rxdart.dart';
import 'package:test_api_bloc/src/models/users.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserBloc {
  final _users = BehaviorSubject<List<Users>>();

  // get Data
  Stream<List<Users>> get users => _users.stream;

  //set DAta
  Function(List<Users>) get changUsers => _users.sink.add;

  dispose() {
    _users.close();
  }

  Future<void> fetchData() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var jsonResponse = convert.jsonDecode(response.body);
    var jsonUsers = jsonResponse as List;

    List<Users> user = [];

    jsonUsers.forEach((users) => {user.add(Users.fromJson(users))});
    changUsers(user);
  }
}
