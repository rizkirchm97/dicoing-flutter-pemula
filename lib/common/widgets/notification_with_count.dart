import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:getwork/common/constants.dart';

class NotificationWithCount extends StatefulWidget {
  const NotificationWithCount({required int totalNotif, Key? key})
      : _totalNotif = totalNotif,
        super(key: key);

  final int _totalNotif;

  @override
  State<NotificationWithCount> createState() => _NotificationWithCountState();
}

class _NotificationWithCountState extends State<NotificationWithCount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.only(top: 5, right: 5),
      child: Stack(
        children: [
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          widget._totalNotif == 0
              ? Container()
              : Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 5),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: Text(
                          "${widget._totalNotif}",
                          style: Constants.semiBoldStyle
                              .copyWith(fontSize: 8.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
