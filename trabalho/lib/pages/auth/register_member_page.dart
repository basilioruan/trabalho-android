import 'package:flutter/material.dart';
import 'package:trabalho/components/input.dart';
import 'package:trabalho/components/button.dart';
import '../../routes/routes.dart';

class RegisterMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              Column(
                children: [
                  const Image(
                    image: AssetImage('assets/icons/logo.png'),
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    'RepApp',
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Text(
                'Cadastra-se na plataforma',
                style: Theme.of(context).textTheme.headline3,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Form(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Input(
                          placeholder: 'Nome completo',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Input(
                          placeholder: 'Apelido',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Input(
                          placeholder: 'Data de Nascimento',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Input(
                          placeholder: 'E-mail',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Input(
                          placeholder: 'Senha',
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Button(
                          text: 'Cadastrar', 
                          callback: () {
                            Navigator.of(context).pushNamed(Routes.welcomePage);
                          }),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Já tem uma conta? Entrar',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
