import 'dart:convert';

import 'package:demo/data/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersWidget extends StatefulWidget {
  const UsersWidget({super.key});

  @override
  State<UsersWidget> createState() => _UsersWidgetState();
}


class _UsersWidgetState extends State<UsersWidget> {
  late Future<Users> users;

  @override
  void initState() {
    super.initState();
    users = fetchUsers();
  }

  Future<Users> fetchUsers() async{
    var response =  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode==200){
      var res = jsonDecode(response.body) as List<dynamic>;
      return Users(res);
      //print(response.body[0]);
      //return Users.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    }else{
      throw Exception("Revisa tu conexión a internet!!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuarios")
      ),
      body: FutureBuilder<Users>(
        future: users,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.users?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.supervised_user_circle_sharp, color: Colors.blue,),
                  title: Text(snapshot.data!.users?[index].name??'N/A'),
                  subtitle: Text(snapshot.data?.users?[index].company?.name??'N/A'),
                  trailing: const Icon(Icons.check_box),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      )
    );
  }
}
