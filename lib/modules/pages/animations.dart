import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing/components/app_bar.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  State<AnimationsPage> createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return MainBar(
      child: _airplaneAnimation(),
    );
  }

  _airplaneAnimation() {
    bool _inTop = true;
    bool _status = true;

    return StatefulBuilder(builder: (context, setState) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _status = !_status;
            _inTop = !_inTop;
            });
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          color: Colors.blue[200],
          padding: EdgeInsets.all(10),
          alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,
          child: RotatedBox(
            quarterTurns: _inTop ? -2 : 0,
            child: Container(
                height: 50,
                child: Icon(Icons.airplanemode_active,
                    size: 50, color: Colors.white)),
          ),
        ),
      );
    });
  }

  _expandAnimation() {
    bool _status = true;

    return StatefulBuilder(builder: (context, setState) {
      return Column(
        children: [
          MaterialButton(
            onPressed: () {
              _status = !_status;
              setState(() {});
            },
            child: Text('Run animation'),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 1),
            color: Colors.green,
            padding: EdgeInsets.all(10),
            height: _status ? 100 : 200,
          )
        ],
      );
    });
  }
}
