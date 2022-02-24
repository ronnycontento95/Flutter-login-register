import 'package:flutter/material.dart';

import 'package:cooportega/pages/loading_page.dart';
import 'package:cooportega/pages/login_page.dart';
import 'package:cooportega/pages/register_page.dart';
import 'package:cooportega/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'usuarios': (_) => UsuariosPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
