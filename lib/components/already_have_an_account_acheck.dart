import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../controllers/controller_alth_login.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final Function? press;
  const AlreadyHaveAnAccountCheck({Key? key, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isLogin =
        Provider.of<ControllerAlthLogin>(context, listen: true).isLogin();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          Provider.of<ControllerAlthLogin>(context, listen: false).isLogin()
              ? "Não possui uma conta"
              : "Já possui uma conta",
          overflow: TextOverflow.fade,
          style: const TextStyle(color: kPrimaryLightColor),
        ),
        TextButton(
          onPressed: () {
            return Provider.of<ControllerAlthLogin>(context, listen: false)
                .swichAlthMode();
          },
          child: Text(_isLogin ? 'CRIAR CONTA' : 'FAZER LOGIN'),
        ),
      ],
    );
  }
}