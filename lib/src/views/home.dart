import 'package:flutter/material.dart';
import 'package:test_api_bloc/src/bloc/provider_user.dart';
import 'package:test_api_bloc/src/models/users.dart';

import 'user_view.dart';






class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero , ()async{
      final bloc = UserProvider.of(context);
      bloc.fetchData();

    });

  }
  @override
  Widget build(BuildContext context) {

    final bloc = UserProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: StreamBuilder<List<Users>>(
        stream: bloc.users,

        builder: (context , snapshot){
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator(),);
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context , index){
              return Column(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text(snapshot.data![index].name!),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UsersView(user:snapshot.data![index],)));
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
