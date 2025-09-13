import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'User_event.dart';
part 'User_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UserEvent>((event, emit) {
      emit(UserInitial());
    });

     on<InfoUser>((event, emit) async {
      emit(UserLoading());

      await Future.delayed(Duration(seconds: 2));

      emit(UserFailed());
      
    });
  }
}
