import 'package:flutter/material.dart';
import 'package:getwork/common/constants.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({required String userName, Key? key})
      : _userName = userName,
        super(key: key);

  final String _userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Halo,',
            style: Constants.mediumStyle
                .copyWith(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 8),
          Text(
            _userName,
            style: Constants.boldStyle.copyWith(color: Colors.black),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
