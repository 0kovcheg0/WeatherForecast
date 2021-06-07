part of "geolocation_cubit.dart";

enum GeolocationStatus {
  started,
  changed,
  error,
}

@immutable
class GeolocationState extends Equatable {
  final Position? position;
  final String? message;
  final GeolocationStatus? status;

  GeolocationState({
    this.position,
    this.message,
    this.status,
  });

  GeolocationState copyWith({
    Position? position,
    String? message,
    GeolocationStatus? status,
  }) {
    return GeolocationState(
      position: position ?? this.position,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [position, message, status];
}
