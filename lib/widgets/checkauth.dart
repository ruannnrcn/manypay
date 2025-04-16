import 'package:flutter/widgets.dart';
import '../pages/home_page.dart';
import '../pages/authentication_page.dart';

class CheckAuth extends StatelessWidget {
  final bool userIsAuthenticated = false;
  @override
  Widget build(BuildContext context) {
    return userIsAuthenticated ? HomePage() : AuthenticationPage();
  }
}
