import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'init_event.dart';
part 'init_state.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc() : super(LoadingAppState()) {
    on<InitEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
