import 'package:flutter/material.dart';
import 'package:test_api_bloc/src/models/users.dart';






class UsersView extends StatefulWidget {

   final Users user ;
   UsersView({required this.user});



  @override
  _UsersViewState createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.user.name!}'),
        centerTitle: true,

      ),
      body: Card(
        child: ListTile(
          title: Text(widget.user.email!),
          subtitle:Text(widget.user.username!) ,
          leading: CircleAvatar(
              child: Center(
                  child: Text(
                      widget.user.name!.substring(0,1).toUpperCase(),
                  ))),

        ),
      ),


    );
  }
}
