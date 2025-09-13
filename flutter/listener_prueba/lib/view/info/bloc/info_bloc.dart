import 'dart:convert';



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../../model/info.dart';

part 'info_event.dart';
part 'info_state.dart';

class InfoBloc extends Bloc<InfoEvent, InfoState> {
  InfoBloc() : super(InfoInitial()) {
    on<InfoEvent>((event, emit) {
      emit(InfoInitial());
    });

     on<GetInfo>((event, emit) async {
      emit(InfoLoading());

      try {
        final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/6'));

        if (response.statusCode == 200){
          final decode = jsonDecode(response.body);

          final info = Info.fromJson(decode);
              
          emit(InfoSuccess(info));

        } else{
          print('Error : ${response.statusCode}');
          emit(InfoFailed());
        }
      } catch (e) {
        print('error $e');
        emit(InfoFailed());
      }
      
    });
  }
}
