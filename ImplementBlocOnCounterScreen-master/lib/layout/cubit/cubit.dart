

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloconcounter/layout/cubit/states.dart';
class Counter extends Cubit<CounterStates>{
Counter():super(CounterInitState());
//calling object from cubit to provide all processes:

static Counter get(context)=>BlocProvider.of( context);
int counter =1;

void minus(){
  counter--;
 emit(CounterMinState(counter));

}
  void plus(){
    counter++;
    emit(CounterAddState(counter));


  }


}