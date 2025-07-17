import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

//TODO: Replace T with your actual data type
@injectable
class {{name.pascalCase()}}Notifier extends StateNotifier<AsyncValue<T>> {
  //TODO: Replace with your actual use case
  //final Usecase _usecase;

  {{name.pascalCase()}}Notifier() : super(const AsyncValue.loading()) {
    // {{name.camelCase()}}Notify();
  }

  Future<void> {{name.camelCase()}}Notify() async {
    // Set state to loading, useful for pull-to-refresh
    state = const AsyncValue.loading();
    // final result = await _usecase(NoParams());

    // Update state with data or error
    // result!.fold(
    //   (failure) => state = AsyncValue.error(failure, StackTrace.current),
    //   (usecase) => state = AsyncValue.data(usecase),
    // );
  }
}

// The provider's type signature is updated to reflect the change
final {{name.camelCase()}}Provider =
    StateNotifierProvider<{{name.pascalCase()}}Notifier, AsyncValue<T>>(
      (ref) => sl<{{name.pascalCase()}}Notifier>(),
    );