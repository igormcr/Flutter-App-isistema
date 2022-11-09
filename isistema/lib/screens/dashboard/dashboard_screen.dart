import 'package:admin/models/restmodel.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(height: defaultPadding),

                      ///Método GET seria aqui
                      //   Restaurante(horas: []),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        Text(
                          'WebAppPesquisa é um conjunto de API para o Sistema da ISBET\n'
                          'O WebAppPesquisa tem como objetivo servir como uma ferramenta\n'
                          ' de frontend para complementar o sistema de administração das pesquisas',
                          //          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      //  )
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                      flex: 10,
                      child: Text(
                          'WebAppPesquisa é um conjunto de API para o Sistema da ISBET\n'
                          'O WebAppPesquisa tem como objetivo servir como uma ferramenta\n'
                          ' de frontend para complementar o sistema de administração das pesquisas',
                          style: TextStyle(fontSize: 20.0))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
