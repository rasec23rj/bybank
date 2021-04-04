import 'package:bytbank/src/app/tranferir.dart.dart';
import 'package:bytbank/src/app/widget/card_widget.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Cardwidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigator.pushNamed(context, '/transferir');
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(child: Transferir(),) ,

                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}