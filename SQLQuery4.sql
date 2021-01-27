-- select yorum satırı
-- ANSII
Select ContactName,ContactName, City sehir from Customers 

-- where nereden city tablosundan landon city olanları getir.
Select * from Customers where City = 'London'

-- Case insensitive (büyük kücük duyarsızdır sql )
select * from Products where CategoryId=1 or CategoryId=3

-- where(nereden) categori etiketi 1 olanlar ve fiyati 10 olan ve buyuk olanları getir.
select * from Products where CategoryId=1 and UnitPrice >=10

-- order by sıralama yapar

-- burda fiyata göre sıralar asc düsükten yükseye artan
select * from Products order by  UnitPrice asc -- asc ascending düsükten yükseye artan

-- desc yüksekten düsüye azalandır
select * from Products order by  UnitPrice desc -- desc decending yüksekten düsüye azalandır.

-- count tüm satırları say 
-- count burda Products tablosunda  satır sayısını getirir.
select count(*) from Products

-- count burda Products tablosunda CategoryID 2 olanların  satır sayısını getirir.
select count(*) Adet from Products where CategoryID =2

select CategoryID,count(*) from Products group by CategoryID

--having aslında where benzer count sayısı 10 dan az olanları getirir.
select CategoryID,count(*) from Products group by CategoryID having count(*)<10

--where fiyati 50 den kücük olanlar ve adet sayısı 10' dan az olanları getirir.
select CategoryID,count(*) from Products where UnitPrice<50 group by CategoryID having count(*)<10

------- JOİNLER
-- inner join tablolar arasında  eşlesenleri bir araya  getirir.
select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice <50


-- DTO Data Transformation Object 


select * from Products pro inner join [Order Details] od
on pro.ProductID = od.ProductID



-- left join solda olup sağda olmayanları getirir
select * from Products pro left  join [Order Details] od
on pro.ProductID = od.ProductID


-- null(boş) is ile yazılır. where orders(siparis)  siparis yapmayanları getirir.
select * from Customers c left join Orders O 
on c.CustomerID = o.CustomerID
where o.CustomerID is null

-- left ile aynı tek fark yazılıs tabloların yerleri
select * from Customers c right join Orders O 
on c.CustomerID = o.CustomerID
















