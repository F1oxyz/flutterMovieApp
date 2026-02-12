import 'package:flutter/material.dart';
import 'package:mi_primer_crud/widgets/btn_principal.dart';
import 'package:mi_primer_crud/widgets/google_btn.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 70),
              Text(
                'Bienvenido',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.w700,
                  fontSize: 42,
                  color: Color(0xFF111118),
                ),
              ),
              Text(
                'Inicia sesión para continuar',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF111118),
                ),
              ),

              SizedBox(height: 40),
              const Text('Email'),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'email@example.com',
                  hintStyle: const TextStyle(
                    color: Color(0xff8F9BB7),
                    fontWeight: FontWeight.w300,
                  ),

                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff5250f7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 15),
              const Text('Password'),
              SizedBox(height: 8),
              PasswordField(),
              SizedBox(height: 20),
              Text(
                '¿Olvidaste tu contraseña?',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xff5250f7),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 30),
              btnPrincipal(onPressed: () {}, label: 'Iniciar Sesión'),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 5,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    "o continuar con",
                    style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                      endIndent: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              singInButton(
                onPressed: () {},
                label: 'Google',
                urlImg:
                    'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c',
              ),
              SizedBox(height: 15),
              singInButton(
                onPressed: () {},
                label: 'Apple',
                urlImg:
                    'https://1000marcas.net/wp-content/uploads/2019/11/Apple-logo.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff5250f7), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: '********',
        hintStyle: const TextStyle(
          color: Color(0xff8F9BB7),
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
      ),
    );
  }
}
