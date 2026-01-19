import 'package:json_annotation/json_annotation.dart';

part 'daily_record.g.dart';

// Annotasi ini memberitahu package json_serializable untuk menghasilkan
// kode serialisasi untuk kelas DailyRecord.
@JsonSerializable()
class DailyRecord {
  final DateTime tanggal;
  final bool isSelesai;

  DailyRecord({
    required this.tanggal,
    required this.isSelesai,
  });

  // Helper serialisasi hasil generate ada di daily_record.g.dart.
  factory DailyRecord.fromJson(Map<String, dynamic> json) =>
      _$DailyRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DailyRecordToJson(this);
}
