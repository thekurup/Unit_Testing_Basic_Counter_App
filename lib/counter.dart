class Counter{
  int _counter = 0;
  int get count =>_counter;
  void Increment(){
    _counter++;
  }
  void Decrement(){
    _counter--;
  }

  void reset(){
    _counter = 0;
  }
}




