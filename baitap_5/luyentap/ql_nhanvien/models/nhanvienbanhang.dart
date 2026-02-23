import 'nhanvien.dart';

class NhanVienBanHang extends Nhanvien {
  double _doanhSo;
  double _hoaHong;

  NhanVienBanHang(String maNV, 
                  String hoTen, 
                  double luongCoBan, 
                  this._doanhSo,
                  this._hoaHong): super(maNV, hoTen, luongCoBan);

  // Getters
  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;

  // Setters
  set doanhSo(double doanhSo){
    _doanhSo = (doanhSo>0)?doanhSo:_doanhSo;
  }

    // Setters
  set hoaHong(double hoaHong){
    _hoaHong = (hoaHong>=0 && hoaHong<=1)?hoaHong:_hoaHong;
  }

  @override
  double tinhLuong() {
   return super.luongCoBan+ doanhSo*hoaHong;
  }

  @override
  void hienThiThongTin() {
    super.hienThiThongTin();
    print("Doanh số: $doanhSo");
    print("Hoa hồng: $hoaHong");
  }
}
