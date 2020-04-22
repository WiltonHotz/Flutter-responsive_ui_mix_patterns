import 'package:responsivearchitecture/factories/widgets_factory.dart';
import 'package:responsivearchitecture/widgets/android/android_activity_indicator.dart';
import 'package:responsivearchitecture/widgets/android/android_slider.dart';
import 'package:responsivearchitecture/widgets/android/android_switch.dart';
import 'package:responsivearchitecture/widgets/interfaces/activity_indicator.dart';
import 'package:responsivearchitecture/widgets/interfaces/slider.dart';
import 'package:responsivearchitecture/widgets/interfaces/switch.dart';

class MaterialWidgetsFactory implements IWidgetsFactory {
  @override
  String getTitle() {
    return 'Android widgets';
  }

  @override
  IActivityIndicator createActivityIndicator() {
    return AndroidActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return AndroidSlider();
  }

  @override
  ISwitch createSwitch() {
    return AndroidSwitch();
  }
}