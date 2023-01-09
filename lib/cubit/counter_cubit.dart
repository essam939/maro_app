// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  
  int ones = 0;
  int fives = 0;
  int tens = 0;
  int twenties = 0;
  int fifties = 0;
  int hundreds = 0;
  int twoHundreds = 0;
  int fiveHundreds = 0;
  int thousands = 0;

  int total = 0;
  void countTotal() {
    total = ones +
        fives * 5 +
        tens * 10 +
        twenties * 20 +
        fifties * 50 +
        hundreds * 100 +
        twoHundreds * 200 +
        fiveHundreds * 500 +
        thousands * 1000;
    emit(total);
  }
}
