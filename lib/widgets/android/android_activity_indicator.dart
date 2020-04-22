import 'package:flutter/material.dart';
import 'package:responsivearchitecture/widgets/interfaces/activity_indicator.dart';

class AndroidActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return CircularProgressIndicator(
      backgroundColor: Color(0xFFECECEC),
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black.withOpacity(0.65),
      ),
    );
  }
}