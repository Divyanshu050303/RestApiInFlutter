import 'package:flutter/material.dart';

class BasicAlertDialog extends StatefulWidget {
  const BasicAlertDialog({super.key});

  @override
  State<BasicAlertDialog> createState() => _BasicAlertDialogState();
}

class _BasicAlertDialogState extends State<BasicAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Basic Alert Dialog"),
                        content: const Text(
                            "You can develop anything you can imagine in a flutter."),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("ok"))
                        ],
                      );
                    });
              },
              child: const Text("Basic Alert Dialog Box")),
          ElevatedButton(onPressed: (){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Confirmation'),
                  content: Text('Are you sure?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Perform the action
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );

          }, child: Text("Confirmation Dialog")),

          ElevatedButton(onPressed: (){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Enter Something'),
                  content: const TextField(

                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Process the input
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );

          }, child: Text("Input Dialog"))
                ],
              ),
        ));
  }
}
