import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessDialog extends StatefulWidget {
  final String message;
  final Function onTap;
  const SuccessDialog({required this.message, required this.onTap});

  @override
  _SuccessDialogState createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      content: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // ignore: prefer_const_constructors
            Text(
              'Success',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              widget.message,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Image.asset("assets/true.png"),
            SizedBox(height: 30),
            Container(
              // width: dynamicWidth(context, 0.8),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: Text('Done'),
                onPressed: widget.onTap(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
