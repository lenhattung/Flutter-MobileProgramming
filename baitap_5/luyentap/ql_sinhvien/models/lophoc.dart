import 'sinhvien.dart';

class LopHoc {
  String _tenLop;
  List<SinhVien> _danhSachSV = [];

  LopHoc(this._tenLop);

  // Getters
  String get tenLop => _tenLop;
  List<SinhVien> get danhSachSV => _danhSachSV;

  // setters
  set tenLop(String tenLop) {
    if (tenLop.isNotEmpty) {
      _tenLop = tenLop;
    }
  }

  // Thêm sinh viên
  void themSinhVien(SinhVien sv) => _danhSachSV.add(sv);

  void hienThiDanhSach() {
    print('\n\n----------------------------');
    print('\nDanh sách sinh viên lớp $_tenLop');
    for (var sv in _danhSachSV) {
      print('\n----------------:');
      sv.hienThiThongTin();
      print('Xếp loại: ${sv.xepLoai()}');
    }
  }
}
