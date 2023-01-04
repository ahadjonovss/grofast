import 'package:flutter/material.dart';
import 'package:grofast/utils/constants/lotties.dart';
import 'package:lottie/lottie.dart';

Future<void> loadingDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return  AlertDialog(
        title: const Text('Signing Up'),
        content:  Lottie.asset(AppLotties.loading,width: 40),
      );
    },
  );
}

