abstract class CounterStates {


}
class CounterInitState extends  CounterStates{}

class CounterAddState extends CounterStates{
  late final int counter;

  CounterAddState(this.counter);
}
class CounterMinState extends CounterStates{
  late final int counter;

  CounterMinState(this.counter);
}