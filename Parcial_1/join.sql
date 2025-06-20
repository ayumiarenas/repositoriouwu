select * from AUTHORS INNER Join BOOKS on AUTHORS.ID = BOOKS.AUTHORID;


SELECT * FROM AUTHORS LEFT OUTER JOIN BOOKS ON AUTHORS.ID = BOOKS.AUTHORID;


select * from AUTHORS right outer join BOOKS on AUTHORS.ID = BOOKS.authorid;


select * from AUTHORS left join BOOKS on AUTHORS.ID = BOOKS.AUTHORID where BOOKS.AUTHORID is null;


select * from AUTHORS right join BOOKS on AUTHORS.ID = BOOKS.AUTHORID where AUTHORS.ID is null;


SELECT * FROM AUTHORS LEFT OUTER JOIN BOOKS ON AUTHORS.ID = BOOKS.AUTHORID UNION ALL select * from AUTHORS right outer join BOOKS on AUTHORS.ID = BOOKS.authorid;
