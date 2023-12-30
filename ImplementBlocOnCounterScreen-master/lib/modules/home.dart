import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloconcounter/layout/cubit/cubit.dart';
import 'package:learningbloconcounter/layout/cubit/states.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Counter(),
      child: BlocConsumer<Counter, CounterStates>(
        listener: (context, state) {
        if(state is CounterInitState) {
          //print('initial state');
        }
        if(state is CounterMinState) {
          //print('minus state ${state.counter}');
        }
        if(state is CounterAddState) {
          //print('addition state ${state.counter}');
        }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Counter'),
            ),
            body: Column(
              //  crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                            child: IconButton(
                                onPressed: () {
                                  Counter.get(context).plus();
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 25,
                                ))),
                        const SizedBox(
                          width: 30,
                        ),
                        //using the cubit object to provide counter process :
                        Text('${Counter.get(context).counter}',
                            style: const TextStyle(
                                fontSize: 90,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                            child: IconButton(
                                onPressed: () {
                                  Counter.get(context).minus();
                                },
                                icon: const Icon(
                                  Icons.minimize_rounded,
                                  color: Colors.black,
                                  size: 25,
                                ))),
                      ],
                    ))
              ],
            ),
            //floatingActionButton: ,
          );
        },

      ),
    );
  }
}
