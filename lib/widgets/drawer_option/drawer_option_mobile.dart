import 'package:flutter/material.dart';
import 'package:responsivearchitecture/datamodels/drawer_item_data.dart';
import 'package:responsivearchitecture/widgets/base_model_widget.dart';

class DrawerOptionMobilePortrait extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      padding: EdgeInsets.only(
        left: 25.0,
      ),
      height: 80.0,
      child: Row(
        children: <Widget>[
          Icon(
            data.iconData,
            size: 25.0,
          ),
          SizedBox(
            width: 25.0,
          ),
          Text(
            data.title,
            style: TextStyle(
              fontSize: 21.0,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      height: 70.0,
      alignment: Alignment.center,
      child: Icon(data.iconData),
    );
  }
}
