import 'package:equatable/equatable.dart';

enum ListStatus { loading, success, failure }

class LoginState extends Equatable {

  const LoginState._({
    this.status = ListStatus.loading,
  });

  const LoginState.loading() : this._();
  const LoginState.success() : this._(status: ListStatus.success);
  const LoginState.failure() : this._(status: ListStatus.failure);

  final ListStatus status;

  @override
  List<Object?> get props => [status];
}
