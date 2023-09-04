import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'park.freezed.dart';

part 'park.g.dart';

@freezed
class Park with _$Park {
  const factory Park({
    required String parkingName,
    required String parkingCode,
    required num capacity,
    required num currentParking,
    required double lat,
    required double lng,
  }) = _Park;

  factory Park.fromJson(Map<String, Object?> json) => _$ParkFromJson(json);
}
