import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Login extends StatefulWidget {
  const Login();

  @override
  State<Login> createState() => _ContentRightState();
}

class _ContentRightState extends State<Login> {
  late SMITrigger _successTrigger;
  late SMITrigger _failTrigger;
  late SMIBool _isHandsUp;
  late SMIBool _isChecking;
  late SMINumber _numLook;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(_onPasswordFieldFocus);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onPasswordFieldFocus);

    super.dispose();
  }

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'Login Machine',
    );
    artboard.addController(controller!);

    _successTrigger = controller.findSMI<SMITrigger>('trigSuccess')!;
    _failTrigger = controller.findSMI<SMITrigger>('trigFail')!;
    _isHandsUp = controller.findSMI<SMIBool>('isHandsUp')!;
    _isChecking = controller.findSMI<SMIBool>('isChecking')!;
    _numLook = controller.findSMI<SMINumber>('numLook')!;
  }

  void _onPasswordFieldFocus() =>
      _focusNode.hasFocus ? _handsOnTheEyes() : _idle();

  void _handsOnTheEyes() => _isHandsUp.change(true);

  void _idle() {
    _isChecking.change(false);
    _isHandsUp.change(false);
  }

  void _lookOnTheTextField() {
    _isHandsUp.change(false);
    _isChecking.change(true);
    _numLook.change(0);
  }

  void _moveEyeBalls(String val) => _numLook.change(val.length.toDouble());

  void _login() {
    _emailController.text == 'admin' && _passwordController.text == 'admin'
        ? _successTrigger.fire()
        : _failTrigger.fire();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400,
          height: 300,
          child: RiveAnimation.asset(
            'rive/teddy.riv',
            onInit: _onRiveInit,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  onTap: _lookOnTheTextField,
                  onChanged: _moveEyeBalls,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Email/Username',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  onTap: _handsOnTheEyes,
                  onTapOutside: (_) => _idle(),
                  focusNode: _focusNode,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _login,
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
