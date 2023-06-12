import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);


  increment() => emit(state + 1);
  decrement() => emit(state - 1);
}
