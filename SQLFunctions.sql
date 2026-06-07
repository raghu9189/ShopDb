use ShopDB;
go;

-- select upper('raghu');
-- go;
-- select lower('Raghu');
-- go;
-- select len('Raghu Ballu') as NameLen;
-- select  getdate();
-- select trim('  Raghu  ');
-- select left('XXRaghu', 2)
-- select right('XXRaghuXX', 2)
-- select date();

-- Difference between dates.
-- select  datediff(year , '2020-01-01', getdate())

 -- NULL Handling Functions
-- select  isnull('SQL', 'Yes');
select coalesce(null, null, 'yes');