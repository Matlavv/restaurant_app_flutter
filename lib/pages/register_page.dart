import "package:flutter/material.dart";
import "package:restaurant_app/components/my_button.dart";
import "package:restaurant_app/components/my_textfield.dart";

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            Text(
              "Créer un compte",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(height: 25),

            // email
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password
            MyTextField(
              controller: passwordController,
              hintText: "Mot de passe",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            MyTextField(
              controller: confirmPasswordController,
              hintText: "Confirmer le mot de passe",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // Sign in button
            MyButton(onTap: () {}, text: "S'inscrire"),

            const SizedBox(height: 10),

            // Se connecter si deja un compte
            Row(
              children: [
                Text(
                  "Deja un compte ?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Se connecter",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
