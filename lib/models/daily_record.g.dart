// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyRecord _$DailyRecordFromJson(Map<String, dynamic> json) => DailyRecord(
  tanggal: DateTime.parse(json['tanggal'] as String),
  isSelesai: json['isSelesai'] as bool,
);

Map<String, dynamic> _$DailyRecordToJson(DailyRecord instance) =>
    <String, dynamic>{
      'tanggal': instance.tanggal.toIso8601String(),
      'isSelesai': instance.isSelesai,
    };
