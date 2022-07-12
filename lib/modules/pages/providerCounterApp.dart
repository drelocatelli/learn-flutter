import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/components/app_bar.dart';
import 'package:testing/controller/providers/counter_provider.dart';

class ProviderCounterPage extends StatefulWidget {
  const ProviderCounterPage({Key? key}) : super(key: key);

  @override
  State<ProviderCounterPage> createState() => _ProviderCounterPageState();
}

class _ProviderCounterPageState extends State<ProviderCounterPage> {
  @override
  Widget build(BuildContext context) {
    return MainBar(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Provider counter app"),
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
