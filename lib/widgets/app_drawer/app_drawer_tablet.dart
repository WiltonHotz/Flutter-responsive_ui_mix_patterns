import 'package:flutter/material.dart';
import 'package:responsivearchitecture/widgets/app_drawer/app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16.0,
            color: Colors.black12,
          ),
        ],
      ),
      child: Row(
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16.0,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}
