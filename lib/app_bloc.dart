import 'package:chatty_bloc/app_events.dart';
import 'package:chatty_bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(InitState()) {
    on<IncrementEvent>((event, emit) {
      emit(AppState(counter:state.counter + 1));
    });
    on<DecrementEvent>((event, emit) {});
  }
}
