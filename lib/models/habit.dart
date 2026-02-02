import 'package:json_annotation/json_annotation.dart';

part 'habit.g.dart';

// Model utama untuk data kebiasaan.
//
// json_serializable akan menghasilkan fungsi helper agar objek ini bisa
// diubah ke/dari JSON tanpa menulis parsing manual.
// 🌟 Keren banget sudah pakai @JsonSerializable! Ini standar industri banget.
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

  // 🚀 Mantap! Factory method fromJson() sudah terimplementasi dengan benar.
  factory Habit.fromJson(Map<String, dynamic> json) =>
      _$HabitFromJson(json);

  // ✨ Bagus! Method toJson() juga sudah rapi dan siap kirim ke API/DB.
  Map<String, dynamic> toJson() => _$HabitToJson(this);
}
