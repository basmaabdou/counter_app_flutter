

import 'package:bloc/bloc.dart';
import 'package:counter_app/counter_app/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitalStates());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter=4;

  void minus (){
    counter--;
    emit(CounterMinusStates(counter));
  }

  void plus (){
    counter++;
    emit(CounterPlusStates());
  }

}
