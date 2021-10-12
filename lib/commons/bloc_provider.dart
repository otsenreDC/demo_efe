import 'package:efe1/commons/bloc.dart';
import 'package:flutter/widgets.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget {
  final Widget child;
  final T bloc;

  const BlocProvider({Key? key, required this.bloc, required this.child})
      : super(key: key);

  static T of<T extends Bloc>(BuildContext context) {
    final BlocProvider<T>? provider =
        context.findAncestorWidgetOfExactType<BlocProvider<T>>();

    if (provider != null) {
      return provider.bloc;
    } else {
      throw NullThrownError();
    }
  }

  @override
  State createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}
