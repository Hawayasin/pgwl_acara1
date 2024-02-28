--Select all data 
select*from persons p 

--count all data 
select count(*) from persons p  

--select id firstname,lastname,color data
select p.id, p.firstname, p.lastname, p.color from persons p 

-- Select id, firstname, lastname, color data where color = biru
SELECT p.id, p.firstname, p.lastname, p.color FROM persons p WHERE p.color = 'biru'
-- Select id, firstname, lastname, color data where color = biru
SELECT p.id, p.firstname, p.lastname, p.color FROM persons p WHERE p.color = 'violet'

-- Select count data group by color
SELECT p.color, count(*) as jumlah FROM persons p group by p.color ORDER BY p.color

-- Count persons using gmail
SELECT count(*)  FROM persons p WHERE p.email like '%@gmail.com'

-- Select persons with same born and city
SELECT * from persons p WHERE p.born = p.city 

-- Select count persons where job = guru
SELECT count(*) from persons p WHERE p.job = 'Guru'

-- Select count persons where born in Yogyakarta
SELECT count(*) from persons p WHERE p.born  = 'Yogyakarta'

-- Select persons with age from date_of_birth
SELECT p.id, p.firstname, p.lastname, p.date_of_birth, age(p.date_of_birth) as age FROM persons p

-- Select persons with day name from date_of_birth
SELECT p.id, p.firstname, p.lastname, p.date_of_birth, to_char(p.date_of_birth, 'Day') as day_of_birth FROM persons p

-- Select data with dayname & age from date_of_birth
SELECT p.id, p.firstname, p.lastname, p.nik, p.email, p.born, p.date_of_birth, 
date_part('year', age(p.date_of_birth)) as year_age, 
date_part('month', age(p.date_of_birth)) as month_age, 
date_part('day', age(p.date_of_birth)) as day_age, 
to_char(p.date_of_birth, 'Day') as day_of_birth   FROM  persons p

-- Menghitung pengguna yahoo
SELECT count(*)  FROM persons p WHERE p.email like '%@yahoo.com'

-- Menghitung kelahiran Solok 
SELECT count(*) from persons p WHERE p.born  = 'Solok'

--menampilkan nilai minimal kondisi 
SELECT MIN(date_of_birth)
FROM persons p
WHERE p.date_of_birth > '1996-12-31';

--menampilkan nilai minimal kondisi 
SELECT MAX(date_of_birth)
FROM persons p
WHERE p.date_of_birth > '2017-12-25';


-- Menghitung pengguna telepon dengan nangka dengan +62
SELECT count(*)  FROM persons p WHERE p.phone like '(+62)%'





