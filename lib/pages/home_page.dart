import 'package:bloc_1/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: SizedBox(),
              ),
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterCubit, dynamic>(
                builder: (context, state) {
                  return Text(
                    '$state',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium,
                  );
                },
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterCubit>().increment();
                        },
                        tooltip: 'Increment',
                        child: const Icon(Icons.plus_one),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterCubit>().decrement();
                        },
                        tooltip: 'Increment',
                        child: const Icon(Icons.exposure_minus_1),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ))
            ],
          ),
        ),
    );
  }
}
