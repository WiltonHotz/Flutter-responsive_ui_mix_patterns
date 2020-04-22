import 'package:responsivearchitecture/widgets/interfaces/activity_indicator.dart';
import 'package:responsivearchitecture/widgets/interfaces/slider.dart';
import 'package:responsivearchitecture/widgets/interfaces/switch.dart';

abstract class IWidgetsFactory {
  String getTitle();
  IActivityIndicator createActivityIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}