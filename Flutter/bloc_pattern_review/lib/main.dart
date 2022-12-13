import 'package:bloc_pattern_review/blocs/todoCubit.dart';
import 'package:bloc_pattern_review/repositories/todoRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_pattern_review/blocs/todoState.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = '';
  //final scaffoldKey = GlobalKey<ScaffoldState>();
  final TodoCubit todoBloc = TodoCubit(repository: TodoRepository());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // ListTodosEvent
    //BlocProvider.of<TodoCubit>(context).listTodo();
    todoBloc.listTodo();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (_) => todoBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter BloC'),
        ),
        floatingActionButton: Builder(builder: (BuildContext ctx) {
          return FloatingActionButton(
            onPressed: () {
              title.isNotEmpty
                  ? todoBloc.createTodo(this.title)
                  : ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('내용을 입력해주세요')));
            },
            child: Icon(
              Icons.edit,
            ),
          );
        }),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              TextField(
                onChanged: (val) {
                  this.title = val;
                },
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: BlocBuilder<TodoCubit, TodoState>(
                  builder: (_, state) {
                    if (state is Empty) {
                      return Container();
                    } else if (state is Error) {
                      return Container(
                        child: Text(state.message),
                      );
                    } else if (state is Loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is Loaded) {
                      final items = state.todos;

                      return ListView.separated(
                        itemBuilder: (_, index) {
                          final item = items[index];

                          return Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item.title,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  todoBloc.deleteTodo(item);
                                },
                                child: Icon(
                                  Icons.delete,
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (_, index) => Divider(),
                        itemCount: items.length,
                      );
                    }

                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
