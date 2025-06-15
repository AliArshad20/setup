import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setup/core/constants/colors.dart';
import 'package:setup/data/providers/theme_provider.dart';
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
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("font check"),
        actions: [
          Switch(
            value: themeProvider.darkTheme,
            onChanged: (_) {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: InkWell(
                onTap: (){
                  SuccessDialog(message: 'Success',
                    onTap: () {AppRoutes.pop(context);},);
                },
                  child: Text("Flutter Developer, font check",
                    style: TextStyle(fontSize: 50,),)),
            ),
          ],
        ),
      ),
    );
  }
}
