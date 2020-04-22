// contains the widgets that will be used for mobile layout of home,
// portrait and landscape

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsivearchitecture/viewmodels/home_view_model.dart';
import 'package:responsivearchitecture/widgets/app_drawer/app_drawer.dart';
import 'package:responsivearchitecture/widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    model.createWidgets(DevicePreview.platform(context).toString());
    return Scaffold(
      key: _scaffoldKey,
//      drawer: AppDrawer(),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          model.updateTitle();
//        },
//      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Widgets showcase',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          '${model.widgetsFactoryList[model.selectedFactoryIndex].getTitle()}',
                          style: Theme.of(context).textTheme.subhead,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Process indicator',
                          style: Theme.of(context).textTheme.subhead,
                        ),
                        Container(
                          child: model.activityIndicator.render(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Slider (${model.sliderValueString}%)',
                          style: Theme.of(context).textTheme.subhead,
                        ),
                        Container(
                          child: model.slider
                              .render(model.sliderValue, model.setSliderValue),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Switch (${model.switchValueString})',
                          style: Theme.of(context).textTheme.subhead,
                        ),
                        Container(
                            child: model.mySwitch.render(
                                model.switchValue, model.setSwitchValue)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

//      Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.all(16.0),
//            child: IconButton(
//              icon: Icon(
//                Icons.menu,
//                size: 30.0,
//              ),
//              onPressed: () {
//                _scaffoldKey.currentState.openDrawer();
//              },
//            ),
//          ),
//          Expanded(
//            child: Center(
//              child: Text(model.title),
//            ),
//          ),
//        ],
//      ),
    );
  }
}

class HomeMobileLandscape extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    model.createWidgets(DevicePreview.platform(context).toString());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Widgets showcase',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          '${model.widgetsFactoryList[model.selectedFactoryIndex].getTitle()}',
                          style: Theme.of(context).textTheme.subhead,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Process indicator',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                            Container(
                              child: model.activityIndicator.render(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Slider (${model.sliderValueString}%)',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                            Container(
                              child: model.slider
                                  .render(model.sliderValue, model.setSliderValue),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Switch (${model.switchValueString})',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                            Container(
                                child: model.mySwitch.render(
                                    model.switchValue, model.setSwitchValue)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

//      Row(
//        children: <Widget>[
//          AppDrawer(),
//          Expanded(
//            child: Center(
//              child: Text(model.title),
//            ),
//          ),
//        ],
//      ),
    );
  }
}
