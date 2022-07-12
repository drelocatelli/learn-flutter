import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:testing/components/app_bar.dart';
import 'package:testing/controller/getxStates/data.dart';

class GetDataPage extends StatelessWidget {
  GetDataPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>(debugLabel: 'formData');

  final DataController c = Get.put(DataController());

  TextEditingController _dataController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MainBar(
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Getx data app"),
              Obx(() => Text("Data will appear here: ${c.name}")),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _dataController,
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(onPressed: () {
                      c.setName(_dataController.text);
                    }, child: Text("Set data")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
