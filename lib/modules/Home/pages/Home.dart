import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:testing/components/app_bar.dart';
import 'package:testing/controller/providers/counter_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MainBar(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Basic counter app"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => context.read<Counter>().decrement(),
                    child: Text("-")),
                SizedBox(width: 20),
                Text("${context.watch<Counter>().count}"),
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () => context.read<Counter>().increment(),
                    child: Text("+"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
