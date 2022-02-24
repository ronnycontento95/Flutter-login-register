import 'package:cooportega/widgets/labels.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';

import '../widgets/boton_azul.dart';
import '../widgets/custom_input.dart';
import '../widgets/logo.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: HexColor("#ffffff"),
        backgroundColor: Color(0xffF2F2F2),
        appBar: AppBar(
          title: Text('Iniciar sesión',
              style: TextStyle(fontSize: 15, color: HexColor("#0063BD"))),
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: HexColor("#0063BD")),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 1.1,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(titulo: 'Registro de Usuarios'),
                  _Form(),
                  Labels(
                    ruta: 'login',
                    titulo: '¿No tienes cuenta?',
                    subTitulo: 'Crea una ahora!',
                  ),
                  Text(
                    'Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Text(
            "Estimad socio/cliente, si es tu primer ingreso debes utilizar el usuario y contraseña Ortegamovil",
            style: TextStyle(
              fontSize: 14,
              color: HexColor("#6B6B6B"),
              fontWeight: FontWeight.w400,
            ),
          ),
          const Divider(),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Ingrese',
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          )
        ],
      ),
    );
  }
}