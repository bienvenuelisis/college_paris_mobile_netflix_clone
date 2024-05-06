import 'package:flutter/material.dart';

void allerSurUnePageEtMaintenirLaPagePrecedente(
  BuildContext context,
  Widget page,
) {
  NavigatorState state = Navigator.of(context);

  MaterialPageRoute route = MaterialPageRoute(
    builder: (BuildContext context) {
      return page;
    },
  );

  state.push(route);
}

void allerSurUnePageEtEnleverLaPagePrecedente(
  BuildContext context,
  Widget page,
) {
  NavigatorState state = Navigator.of(context);

  MaterialPageRoute route = MaterialPageRoute(
    builder: (BuildContext context) {
      return page;
    },
  );

  state.pushReplacement(route);
}

void allerSurUnePageEtEnleverToutesLesPagesPrecedentes(
  BuildContext context,
  Widget page,
) {
  NavigatorState state = Navigator.of(context);

  MaterialPageRoute route = MaterialPageRoute(
    builder: (BuildContext context) {
      return page;
    },
  );

  state.pushAndRemoveUntil(route, (Route<dynamic> route) => false);
}

void navigation(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
