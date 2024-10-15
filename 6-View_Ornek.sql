--Ürün adı, Ürün stok bilgisi , Ürün fiyatı , kategori adı ve tedarikçi adını listeleyen bir view oluşturup çağıralım
--(products , categories , suppliers)

create view Urunler
as 
	select
		Products.ProductName,
		Products.UnitsInStock,
		Products.UnitPrice,
		Categories.CategoryName,
		Suppliers.CompanyName
	from Products
	inner join Categories on Products.CategoryID=Categories.CategoryID
	inner join Suppliers on Products.SupplierID=Suppliers.SupplierID

--Oluşturduğumuz view i çağıralım
select * from Urunler 