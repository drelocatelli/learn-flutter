import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:testing/controller/providers/counter_provider.dart';

class Store extends StatelessWidget {

  final Widget child;
  
  const Store({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter())
      ],
      child: child,
    );
  }
}