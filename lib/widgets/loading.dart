import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
            width: 100,
            height: 100,
          ),
          Center(
            child: Text(
              "Cargando",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
