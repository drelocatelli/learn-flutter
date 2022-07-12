import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:testing/components/app_bar.dart';
import 'package:testing/controller/getxStates/counter.dart';

class GetCounterPage extends StatefulWidget {
  const GetCounterPage({Key? key}) : super(key: key);

  @override
  State<GetCounterPage> createState() => _GetCounterPageState();
}

class _GetCounterPageState extends State<GetCounterPage> {
  final CounterGetController c = Get.put(CounterGetController());

  @override
  Widget build(BuildContext context) {
    return MainBar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Getx counter app"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => c.decrement(), child: Text("-")),
                SizedBox(width: 15),
                Obx(() => Text("${c.count}")),
                SizedBox(width: 15),
                ElevatedButton(onPressed: () => c.increment(), child: Text("+"))
              ],
            ),
          ],
        ));
  }
}
