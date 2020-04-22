import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:responsivearchitecture/factories/cupertino_widgets_factory.dart';
import 'package:responsivearchitecture/factories/material_widgets_factory.dart';
import 'package:responsivearchitecture/factories/widgets_factory.dart';
import 'package:responsivearchitecture/widgets/interfaces/activity_indicator.dart';
import 'package:responsivearchitecture/widgets/interfaces/slider.dart';
import 'package:responsivearchitecture/widgets/interfaces/switch.dart';
import 'dart:io' show Platform; // use in release


class HomeViewModel extends ChangeNotifier {

  final List<IWidgetsFactory> widgetsFactoryList = [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory(),
  ];

int selectedFactoryIndex;

  IActivityIndicator activityIndicator;

  ISlider slider;
  double sliderValue = 50.0;
  String get sliderValueString => sliderValue.toStringAsFixed(0);

  ISwitch mySwitch;
  bool switchValue = false;
  String get switchValueString => switchValue ? 'ON' : 'OFF';

  void createWidgets(String platform) {
    selectedFactoryIndex = platform == "TargetPlatform.android" ? 0 : 1;
    activityIndicator =
        widgetsFactoryList[selectedFactoryIndex].createActivityIndicator();
    slider = widgetsFactoryList[selectedFactoryIndex].createSlider();
    mySwitch = widgetsFactoryList[selectedFactoryIndex].createSwitch();
  }

  void setSliderValue(double value) {
      sliderValue = value;
      notifyListeners();
  }

  void setSwitchValue(bool value) {
      switchValue = value;
      notifyListeners();
  }

  String title = 'default';
  int counter = 0;

  void initialize() {
//    _createWidgets(); supposed to be called here, but Device_preview platform is not initialized yet.
    notifyListeners();
  }

  void updateTitle() {
    counter++;
    title = 'Updated: $counter';
    notifyListeners();
  }
}