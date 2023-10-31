import 'package:demo2/data/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersWidget extends StatefulWidget {
  const UsersWidget({super.key});

  @override
  State<UsersWidget> createState() => _UsersWidgetState();
}


class _UsersWidgetState extends State<UsersWidget> {
  late Users users;

  @override
  void initState() {

    super.initState();
  }

  Future<Users> fetchUsers() async{
    var response =  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
