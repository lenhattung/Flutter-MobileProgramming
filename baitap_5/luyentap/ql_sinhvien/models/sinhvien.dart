class SinhVien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

  // constructor
  SinhVien(this._hoTen,
          this._tuoi,
          this._maSV,
          this._diemTB
  );
 
  // Getters
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  // Setters
  set hoTen(String hoTen){
    if (hoTen.isNotEmpty){
      _hoTen = hoTen;
    }
  }

  set tuoi(int tuoi){
    _tuoi = (tuoi>0)? tuoi : _tuoi;
  }

  set maSV(String maSV){
    _maSV = (maSV.isNotEmpty)?maSV:_maSV;
  }

  set diemTB(double diemTB) {
    if (diemTB >= 0 && diemTB <= 10) {
      _diemTB = diemTB;
    }
  }

  // methods
  void hienThiThongTin(){
    print('Họ tên: $hoTen');
    print('Tuổi: $tuoi');
    print('Mã SV: $maSV');
    print('Điểm TB: $diemTB');
  }

  String xepLoai(){
    if (_diemTB >= 8.0) return 'Giỏi';
    if (_diemTB >= 6.5) return 'Khá';
    if (_diemTB >= 5.0) return 'Trung bình';
    return 'Yếu';     
  }
}

