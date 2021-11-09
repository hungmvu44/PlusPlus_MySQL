use student_cms_plusplus;
select * from laptop group by maker order by maker asc;

select `name`, maker, SUM(sold) as `Sold`,  sold * price as `Revenue` from laptop group by maker
order by maker asc;