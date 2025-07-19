Bài Tập Phân Tích Dữ Liệu Lớn – Chinh Phục Dữ Liệu Triệu Dòng! 🚀
### **Thông Tin Bộ Dữ Liệu**
Bộ dữ liệu của Dứa Data gồm **4 file** với cấu trúc như sau:
- **File 1, File 2, File 3** có cấu trúc giống nhau gồm:
    - **Mã giao dịch**
    - **Số lượng bán sản phẩm 1**
    - **Số lượng bán sản phẩm 2**
    - **Số lượng bán sản phẩm 3**
    Dữ liệu này được thu thập trong **1 tháng bán hàng**.
- **File 4** có cấu trúc dữ liệu khác, gồm:
    - **Mã giao dịch**
    - **Type** (1, 2, 4):
        - 1: Số lượng sản phẩm 1
        - 2: Số lượng sản phẩm 2
        - 4: Số lượng sản phẩm 4
    - **Số lượng bán hàng** (theo từng sản phẩm).
  
📌 Mục tiêu

- Phân tích hành vi mua hàng của khách hàng thông qua dữ liệu giao dịch lớn (hơn 2 triệu dòng), nhằm đưa ra insight về:
- Mức độ phổ biến & hiệu quả từng sản phẩm
- Thói quen mua hàng (đơn nhỏ, mua kèm,…)
- Cặp sản phẩm thường đi cùng nhau
- Đề xuất chiến lược bán hàng phù hợp

🔧 Quy trình xử lý

1. Làm sạch & nối dữ liệu bằng SQL:
-- Gộp 3 file đầu và chuẩn hóa về dạng long giống file4
-- Nối dữ liệu vào bảng duy nhất `TongHop1`
-- Tạo bảng tần suất `MuaChung` để phân tích sản phẩm mua cùng
2. Import vào Power BI
Dùng Import qua Server và Database để kết nối bảng SQL
Trực quan hóa với biểu đồ cột, donut, combo, matrix,...
<img width="1338" height="758" alt="image" src="https://github.com/user-attachments/assets/1ca2cd47-aafc-46fe-91e3-d68968491bbe" />

📊 Những insight nổi bật

🟩 Hiệu quả sản phẩm

- Sản phẩm 1 có nhiều đơn hàng nhất → phổ biến với nhóm khách lẻ, dễ tiếp cận
- Sản phẩm 2 có tổng số lượng bán cao nhất → thường mua với số lượng lớn, phù hợp với doanh nghiệp/đại lý
  
🟨 Cấu trúc đơn hàng

- 82% đơn hàng mua ≤ 20 SKU → đa số đơn nhỏ
- Sản phẩm 2 có cơ cấu đơn hàng đa dạng → cần linh hoạt chính sách bán lẻ & sỉ
  
🟪 Mối quan hệ sản phẩm

- Cặp sản phẩm 1-3 được mua cùng nhiều nhất
- Sản phẩm 3 & 4 thường được mua kèm → không phải sản phẩm chính
- 
🎯 Action đề xuất (chi tiết trong báo cáo PDF)

📌 Tối ưu theo sản phẩm	: Tăng phân phối sản phẩm 1, triển khai ưu đãi sỉ cho sản phẩm 2
🛒 Tối ưu theo đơn hàng	: Thiết kế quy trình nhanh cho đơn nhỏ, combo sản phẩm 1-3 hoặc 1-4
📈 Bán chéo & tiếp thị:	Gợi ý combo mua kèm, flash sale theo cặp sản phẩm thường đi cùng
🧲 Tăng tiếp cận:	Tập trung vào nhóm khách chỉ mua 1 loại bằng đề xuất sản phẩm gợi ý
