import 'package:flutter/material.dart';
import 'package:responsivearchitecture/datamodels/drawer_item_data.dart';
import 'package:responsivearchitecture/widgets/base_model_widget.dart';

class DrawerOptionTabletPortrait extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      width: 152.0,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            data.iconData,
            size: 45,
          ),
          Text(
            data.title,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
//
//class DrawerOptionTabletLandscape extends BaseModelWidget<DrawerItemData> {
//
//  @override
//  Widget build(BuildContext context, DrawerItemData data) {
//    return Container();
//  }
//}
