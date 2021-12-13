import 'package:flutter/material.dart';
import 'package:test_api_bloc/src/bloc/user_bloc.dart';





class UserProvider extends InheritedWidget{

  final UserBloc bloc ;

  UserProvider({Key? key , Widget? child}):
      bloc = UserBloc(),
      super(key: key , child: child!);




  @override
  bool updateShouldNotify(_)  =>  true ;



  static UserBloc of(BuildContext context){
    return(context.dependOnInheritedWidgetOfExactType<UserProvider>() as UserProvider).bloc;
  }



}