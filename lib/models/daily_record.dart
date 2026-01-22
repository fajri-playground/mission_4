import 'package:json_annotation/json_annotation.dart';

part 'daily_record.g.dart';

// Model catatan harian untuk sebuah habit.
//
// json_serializable akan menghasilkan fungsi helper agar objek ini bisa
// diubah ke/dari JSON tanpa menulis parsing manual.
@JsonSerializable()
class DailyRecord {
  final DateTime tanggal;
  final bool isSelesai;

  DailyRecord({
    required this.tanggal,
    required this.isSelesai,
  });

  // Factory ini membaca Map dari JSON lalu membuat objek DailyRecord.
  // Implementasinya di-generate pada file daily_record.g.dart.
  factory DailyRecord.fromJson(Map<String, dynamic> json) =>
      _$DailyRecordFromJson(json);

  // Mengubah objek DailyRecord menjadi Map agar mudah disimpan/ditransfer.
  Map<String, dynamic> toJson() => _$DailyRecordToJson(this);
}
