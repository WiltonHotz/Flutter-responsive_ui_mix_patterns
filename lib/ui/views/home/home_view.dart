import 'package:flutter/material.dart';
import 'package:responsivearchitecture/ui/responsive/orientation_layout.dart';
import 'package:responsivearchitecture/ui/responsive/screen_type_layout.dart';
import 'package:responsivearchitecture/viewmodels/home_view_model.dart';
import 'package:responsivearchitecture/widgets/base_widget.dart';
import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialize(),
      builder: (context) => ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: (context) => HomeMobilePortrait(),
          landscape: (context) => HomeMobileLandscape(),
        ),
        tablet: OrientationLayout(
          portrait: (context) => HomeMobilePortrait(),
          landscape: (context) => HomeMobileLandscape(),
        ),
      ),
    );
  }
}
