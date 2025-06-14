import 'package:flutter/material.dart';
import 'package:setup/presentation/widgets/alertbox.dart';
import 'package:setup/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(width: 200,height: 20,
          color: Colors.blue,
          child: InkWell(
            onTap: (){
              print("object");
              SuccessDialog(message: 'Success',
                onTap: () {AppRoutes.pop(context);},);
            },
              child: Text("Flutter Developer")),
        ),
      ),
    );
  }
}
