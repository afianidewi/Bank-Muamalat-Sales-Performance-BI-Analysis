-- menentukan hasil yang ingin ditampilkan
SELECT
      o.Date AS order_date,
      pc.CategoryName AS category_name,
      p.ProdName AS products_name,
      p.Price AS products_price,
      o.Quantity AS order_qty,
      (o.Quantity * p.Price) AS total_sales,
      c.CustomerEmail AS cust_email,
      c.CustomerCity AS cust_city
-- menentukan tabel utama transaksi
FROM bank_muamalat.orders o
-- menggabungkan tabel lain yang memiliki relasi 
JOIN bank_muamalat.customers c 
      ON o.CustomerID = c.CustomerID
JOIN bank_muamalat.products p 
      ON o.ProdNumber = p.ProdNumber
JOIN bank_muamalat.productcategory pc 
      ON p.Category = pc.CategoryID
-- mengurutkan hasil query berdasarkan tanggal transaksi
ORDER BY o.Date ASC;