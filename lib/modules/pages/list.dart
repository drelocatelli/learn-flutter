import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:testing/components/app_bar.dart';
import 'package:testing/modules/pages/getCounterApp.dart';
import 'package:testing/modules/pages/getDataApp.dart';
import 'package:testing/modules/pages/providerCounterApp.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainBar(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page list"),
            SizedBox(height: 15),
            Text("Provider state management:"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () => Get.to(() => ProviderCounterPage()), child: Text("Provider counter")),
            ),
            Text("Getx state management:"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () => Get.to(() => GetCounterPage()), child: Text("Getx counter")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () => Get.to(() => GetDataPage()), child: Text("Getx data")),
            ),
          ],
        ),
      )
    );
  }
}