WITH Tong AS (
    SELECT * FROM File1
    UNION ALL
    SELECT * FROM File2
    UNION ALL
    SELECT * FROM File3
)
select * into TongHop1 
from (
SELECT [Mã giao dịch], 1 AS Type, [Sản phẩm 1] AS SL
FROM Tong
WHERE [Sản phẩm 1] > 0
UNION ALL
SELECT [Mã giao dịch], 2 AS Type, [Sản phẩm 2] AS SL
FROM Tong
WHERE [Sản phẩm 2] > 0
UNION ALL
SELECT [Mã giao dịch], 3 AS Type, [Sản phẩm 3] AS SL
FROM Tong
WHERE [Sản phẩm 3] > 0
 union all 
 SELECT [Mã giao dịch], Type,  SL
FROM File4
 )as TongHop1;



select * into MuaChung 
from (
SELECT
    A.Type AS Type1,
    B.Type AS Type2,
    COUNT(DISTINCT A.[Mã giao dịch]) AS SoLanMuaChung
FROM TongHop1 A
JOIN TongHop1 B
    ON A.[Mã giao dịch] = B.[Mã giao dịch]
   AND A.Type < B.Type
GROUP BY A.Type, B.Type) as MuaChung




