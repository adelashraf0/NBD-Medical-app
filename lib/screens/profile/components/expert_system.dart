import 'package:NBD/components/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ExpertSystem extends StatefulWidget {
  static String routeName = "/expert_system";

  @override
  _ExpertSystemState createState() => _ExpertSystemState();
}

class _ExpertSystemState extends State<ExpertSystem> {
  final _picker = ImagePicker();
  Future getimage() async {
    PickedFile image = await _picker.getImage(source: ImageSource.gallery);
    setState((){
      image;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Online detection"),
        ),
        body: Center(
          child: Column(
              children: [
                DefaultButton(
              text: "Upload X-Ray",
            press: getimage,
          )
              ]
          )
)
    );

  }
}