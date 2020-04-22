import 'package:responsivearchitecture/factories/widgets_factory.dart';
import 'package:responsivearchitecture/widgets/interfaces/activity_indicator.dart';
import 'package:responsivearchitecture/widgets/interfaces/slider.dart';
import 'package:responsivearchitecture/widgets/interfaces/switch.dart';
import 'package:responsivearchitecture/widgets/ios/ios_activity_indicator.dart';
import 'package:responsivearchitecture/widgets/ios/ios_slider.dart';
import 'package:responsivearchitecture/widgets/ios/ios_switch.dart';

class CupertinoWidgetsFactory implements IWidgetsFactory {
  @override
  String getTitle() {
    return 'iOS widgets';
  }

  @override
  IActivityIndicator createActivityIndicator() {
    return IosActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return IosSlider();
  }

  @override
  ISwitch createSwitch() {
    return IosSwitch();
  }
}