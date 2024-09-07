import 'package:flutter/cupertino.dart';
import 'package:udemy_flutter/app/app.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  void updateAppState(){
    MyApp.instance.appState =100;
  }

  void getAppState(){
    print(MyApp.instance.appState); //100
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
