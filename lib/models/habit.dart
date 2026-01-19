import 'package:json_annotation/json_annotation.dart';

part 'habit.g.dart';

// Annotasi ini memberitahu package json_serializable untuk menghasilkan
// kode serialisasi untuk kelas Habit.
@JsonSerializable()
class Habit {
  final String nama;
  final String frekuensi;
  final int target;
  final String warna;

  Habit({
    required this.nama,
    required this.frekuensi,
    required this.target,
    required this.warna,
  });

  // Helper serialisasi hasil generate ada di habit.g.dart.
  factory Habit.fromJson(Map<String, dynamic> json) =>
      _$HabitFromJson(json);

  Map<String, dynamic> toJson() => _$HabitToJson(this);
}
