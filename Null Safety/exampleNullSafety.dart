void main() {
//   Contoh Nilai Variable non-nullable (tidak boleh null)
int number = 5;
print('number : $number'); // berhasil dijalankan dengan output 5

// Contoh Nilai Variable nullabe (boleh null)
int? nullNumber;
print('nullable Number : $nullNumber'); // hasil output adalah null

// Menggunakan Null-aware operator untuk menangani null
int defaultNumber = nullNumber ?? 0;
print('default Number : $defaultNumber'); // Hasil output 0

// Mengakses properti atau metode dengan null-aware operator
String? name = null;
print('Name length : ${name?.length}'); // tidak mengalami eror, hanya saja outputnya null

// Menggunakan late keyword untuk variable yang akan diinisialisasi belakangan
late String lateName;
lateName = "Fulian";
print('lateName : $lateName');

// Memaksa non-null dengan operator '!'
String? nullString = "Hello";
print('Nullable String length : ${nullString!.length}'); // ini akan tetap karena nilai tidak null
}
