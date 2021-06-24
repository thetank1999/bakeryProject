select * from [Product]
where [Name] like '%lá ngón%'
order by [Id]
offset 6 row
fetch first 6 rows only

-----------------------
select COUNT (*) from [Product]
where [Name] like '%lá ngón%'