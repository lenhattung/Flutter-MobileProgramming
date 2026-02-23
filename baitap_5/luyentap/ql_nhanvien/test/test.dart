import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main() {
  // Test nhân viên thường
  Nhanvien nv = Nhanvien('NV001', 'Nguyen Van A', 5000000);
  print('Thồng tin nhân viên thường: ');
  nv.hienThiThongTin();

  // Test nhân viên bán hàng
  NhanVienBanHang nv_BH = NhanVienBanHang('NV002', 'Phạm Thị B', 5000000, 100000000, 0.02);
  print('\nThông tin nhân viên bán hàng:');
  nv_BH.hienThiThongTin();
}
