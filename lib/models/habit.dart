import 'package:json_annotation/json_annotation.dart';

part 'habit.g.dart';

// Model utama untuk data kebiasaan.
//
// json_serializable akan menghasilkan fungsi helper agar objek ini bisa
// diubah ke/dari JSON tanpa menulis parsing manual.
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

  // Factory ini membaca Map dari JSON lalu membuat objek Habit.
  // Implementasinya di-generate pada file habit.g.dart.
  factory Habit.fromJson(Map<String, dynamic> json) =>
      _$HabitFromJson(json);

  // Mengubah objek Habit menjadi Map agar mudah disimpan/ditransfer.
  Map<String, dynamic> toJson() => _$HabitToJson(this);
}
