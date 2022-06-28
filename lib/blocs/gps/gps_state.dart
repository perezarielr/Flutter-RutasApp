part of 'gps_bloc.dart';

class GpsState extends Equatable {
  
  final bool isGpsEnebled;
  final bool isGpsPermissionGranted;  

  bool get isAllGranted => isGpsEnebled && isGpsPermissionGranted;
  
  const GpsState({
    required this.isGpsEnebled,
    required this.isGpsPermissionGranted
  });

  GpsState copyWith({
    bool? isGpsEnebled,
    bool? isGpsPermissionGranted,
  }) => GpsState(
    isGpsEnebled: isGpsEnebled ?? this.isGpsEnebled,
    isGpsPermissionGranted: isGpsPermissionGranted ?? this.isGpsPermissionGranted
  );
  
  @override
  List<Object> get props => [ isGpsEnebled, isGpsPermissionGranted ];

  @override
  String toString() => '{ isGpsEnebled: $isGpsEnebled, isGpsPermissionGranted: $isGpsPermissionGranted}';

}

