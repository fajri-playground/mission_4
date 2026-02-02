// ignore_for_file: avoid_print

import 'models/habit.dart';
import 'models/daily_record.dart';

void main() {
  print('=== HABIT TRACKER TEST ===\n');

  // STEP 1: Buat objek Habit sebagai data awal.
  print('STEP 1: Membuat Object Habit');
  Habit marathon = Habit(
    nama: 'Marathon 5KM',
    frekuensi: 'Setiap Hari',
    target: 5,
    warna: 'Merah',
  );
  // 🎯 Inisialisasi object sudah mantap!
  print('Habit dibuat: ${marathon.nama}\n');

  // STEP 2: Serialisasi (Object -> JSON) untuk simulasi penyimpanan/kirim data.
  print('STEP 2: Mengubah ke JSON');
  Map<String, dynamic> jsonHabit = marathon.toJson();
  print('Data JSON: $jsonHabit\n');

  // STEP 3: Deserialisasi (JSON -> Object) untuk memastikan data bisa dipulihkan.
  print('STEP 3: Mengubah JSON ke Object');
  Habit habitFromJson = Habit.fromJson(jsonHabit);
  print('Object baru dibuat dari JSON\n');

  // STEP 4: Verifikasi Data hasil serialisasi-deserialisasi.
  print('STEP 4: Verifikasi Data');
  print('Nama Asli:  ${marathon.nama}');
  print('Nama Hasil: ${habitFromJson.nama}');
  print('Match: ${marathon.nama == habitFromJson.nama ? "BERHASIL" : "GAGAL"}');
  // 🌈 Verifikasi data adalah habit yang sangat baik (Unit Test vibe)! 🧪

  // === ***************************************************** ===

  // Cek alur serialisasi DailyRecord sebagai verifikasi tambahan.
  print('\n\n=== DAILY RECORD TEST ===\n');

  // STEP 5: Buat objek DailyRecord sebagai contoh catatan harian.
  print('STEP 5: Membuat Object DailyRecord');
  DailyRecord record = DailyRecord(
    tanggal: DateTime(2026, 1, 19),
    isSelesai: true,
  );
  print('Record dibuat: ${record.tanggal.toLocal()}\n');

  // STEP 6: Serialisasi (Object -> JSON).
  print('STEP 6: Mengubah ke JSON');
  Map<String, dynamic> jsonRecord = record.toJson();
  print('Data JSON: $jsonRecord\n');

  // STEP 7: Deserialisasi (JSON -> Object).
  print('STEP 7: Mengubah JSON ke Object');
  DailyRecord recordFromJson = DailyRecord.fromJson(jsonRecord);
  print('Object baru dibuat dari JSON\n');

  // STEP 8: Verifikasi Data hasil serialisasi-deserialisasi.
  print('STEP 8: Verifikasi Data');
  print('Tanggal Asli:  ${record.tanggal.toLocal()}');
  print('Tanggal Hasil: ${recordFromJson.tanggal.toLocal()}');
  print('Status Asli:   ${record.isSelesai}');
  print('Status Hasil:  ${recordFromJson.isSelesai}');
  print('Match: ${record.tanggal == recordFromJson.tanggal && record.isSelesai == recordFromJson.isSelesai ? "BERHASIL" : "GAGAL"}');
  // 🏆 Overall, implementasi Mission 4 kamu luar biasa! Pertahankan! 🎈
}
