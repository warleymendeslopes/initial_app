import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DummyRepository {}

class DummyCubit extends Cubit<int> {
  DummyCubit() : super(0);
}

class AppBinding extends StatelessWidget {
  final Widget child;
  const AppBinding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<DummyRepository>(create: (_) => DummyRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<DummyCubit>(create: (_) => DummyCubit()),
        ],
        child: child,
      ),
    );
  }
}
