// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Habit _$HabitFromJson(Map<String, dynamic> json) => Habit(
  nama: json['nama'] as String,
  frekuensi: json['frekuensi'] as String,
  target: (json['target'] as num).toInt(),
  warna: json['warna'] as String,
);

Map<String, dynamic> _$HabitToJson(Habit instance) => <String, dynamic>{
  'nama': instance.nama,
  'frekuensi': instance.frekuensi,
  'target': instance.target,
  'warna': instance.warna,
};
