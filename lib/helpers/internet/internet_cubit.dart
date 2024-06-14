import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'constants/enum.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  late final Connectivity _connectivity;
  StreamSubscription? _connectivitySubscription;

  InternetCubit({required Connectivity connectivity}) : super(InternetLoading()) {
    _connectivity = connectivity;
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emit(InternetConnected(connectionType: ConnectionType.wifi));
      }
      else if (connectivityResult == ConnectivityResult.mobile) {
        emit(InternetConnected(connectionType: ConnectionType.mobile));
      } else {
        emit(InternetDisconnected());
      }
    });
  }

  @override
  Future<void> close() {
    if(_connectivitySubscription != null){
      _connectivitySubscription!.cancel();
    }
    return super.close();
  }
}