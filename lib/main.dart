// ignore_for_file: must_be_immutable, camel_case_types, use_key_in_widget_constructors

import 'package:basketball_counter_app/Cubit/counter_cubit.dart';
import 'package:basketball_counter_app/Cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomPage(),
      ),
    );
  }
}

class HomPage extends StatelessWidget {
  HomPage({Key? key}) : super(key: key);
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    const  Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style:const  TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamAIncrement(team: 'A', buttonNumber: 1);
                        },
                        child:const  Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () 
                        {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamAIncrement(team: 'A', buttonNumber: 2);
                        },
                        child:const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () 
                        {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamAIncrement(team: 'A', buttonNumber: 3);
                        },
                        child:const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    const  Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style:const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding:const EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          minimumSize:const Size(150, 50),
                        ),
                        onPressed: () 
                        {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamAIncrement(team: 'B', buttonNumber: 1);
                        },
                        child:const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamAIncrement(team: 'B', buttonNumber: 2);
                        },
                        child:const Text(
                          'Add 2 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () 
                        {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamAIncrement(team: 'B', buttonNumber: 3);
                        },
                        child:const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8),
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {},
              child:const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    }, listener: (context, state) {
  
    });
  }
}
