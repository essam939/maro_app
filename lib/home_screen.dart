import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_calc/cubit/counter_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController oneCtr = TextEditingController();
  TextEditingController fiveCtr = TextEditingController();
  TextEditingController tenCtr = TextEditingController();
  TextEditingController twentyCtr = TextEditingController();
  TextEditingController fiftyCtr = TextEditingController();
  TextEditingController onehandredCtr = TextEditingController();
  TextEditingController twohandredCtr = TextEditingController();
  TextEditingController fivehandredCtr = TextEditingController();
  TextEditingController thousandsCtr = TextEditingController();
  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 3,
        ));
  }

  void controllerClear() {
    oneCtr.clear();
    fiveCtr.clear();
    tenCtr.clear();
    twentyCtr.clear();
    fiftyCtr.clear();
    onehandredCtr.clear();
    twohandredCtr.clear();
    fivehandredCtr.clear();
    thousandsCtr.clear();
  }

  blocCounterClear(CounterCubit counterCubit) {
    counterCubit.ones = 0;
    counterCubit.fives = 0;
    counterCubit.tens = 0;
    counterCubit.twenties = 0;
    counterCubit.fifties = 0;
    counterCubit.hundreds = 0;
    counterCubit.twoHundreds = 0;
    counterCubit.fiveHundreds = 0;
    counterCubit.thousands = 0;
    counterCubit.countTotal();
  }

  @override
  void dispose() {
    oneCtr.dispose();
    fiveCtr.dispose();
    tenCtr.dispose();
    twentyCtr.dispose();
    fiftyCtr.dispose();
    onehandredCtr.dispose();
    twohandredCtr.dispose();
    fivehandredCtr.dispose();
    thousandsCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Maro Money Calculator "),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: oneCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '1',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.ones = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.ones = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      controller: fiveCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '5',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.fives = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.fives = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      controller: tenCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '10',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.tens = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.tens = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      controller: twentyCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '20',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.twenties = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.twenties = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: fiftyCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '50',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.fifties = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.fifties = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      controller: onehandredCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '100',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.hundreds = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.hundreds = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      controller: twohandredCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '200',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.twoHundreds = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.twoHundreds = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      controller: fivehandredCtr,
                      decoration: InputDecoration(
                        border: myinputborder(),
                        labelText: '500',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            counterCubit.fiveHundreds = 0;
                            counterCubit.countTotal();
                          } else {
                            counterCubit.fiveHundreds = int.parse(value);
                            counterCubit.countTotal();
                          }
                        });
                      },
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: thousandsCtr,
                  decoration: InputDecoration(
                    border: myinputborder(),
                    labelText: '1000',
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty) {
                        counterCubit.thousands = 0;
                        counterCubit.countTotal();
                      } else {
                        counterCubit.thousands = int.parse(value);
                        counterCubit.countTotal();
                      }
                    });
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total: \$${counterCubit.total}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          controllerClear();
                          blocCounterClear(counterCubit);
                          FocusScope.of(context).requestFocus(FocusNode());
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                            child: Text(
                          "C",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
