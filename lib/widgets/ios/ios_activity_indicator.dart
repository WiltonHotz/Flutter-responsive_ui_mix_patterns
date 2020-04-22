import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsivearchitecture/widgets/interfaces/activity_indicator.dart';

class IosActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return CupertinoActivityIndicator();
  }
}