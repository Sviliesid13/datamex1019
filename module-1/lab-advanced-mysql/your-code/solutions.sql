#Challenge 1

SELECT s.`title_id` as 'Title ID',
ta.`au_id` as 'Author ID',
COALESCE((t.`price` * s.qty * t.royalty / 100 * ta.royaltyper / 100),0) as 'Sales Royalty'
FROM `titleauthor` as ta
LEFT JOIN `sales` as s
ON ta.`title_id`=s.`title_id`
LEFT JOIN `titles` as t
ON t.`title_id`=s.`title_id`;

SELECT Title_ID as 'Title ID',
SUM(Aggregated_Royalties) as 'Aggregated Royalties'
FROM
(SELECT s.`title_id` as Title_ID,
ta.`au_id` as Author_ID,
COALESCE(t.`price` * s.qty * t.royalty / 100 * ta.royaltyper / 100,0) as Aggregated_Royalties
FROM `titleauthor` as ta
LEFT JOIN `sales` as s
ON ta.`title_id`=s.`title_id`
LEFT JOIN `titles` as t
ON t.`title_id`=s.`title_id`
GROUP BY Title_ID, Author_ID, Aggregated_Royalties) ar
GROUP BY Title_ID;

SELECT Author_ID as 'Author ID',
SUM(Profits) as 'Profits'
FROM
(SELECT s.`title_id` as Title_ID,
ta.`au_id` as Author_ID,
COALESCE(t.`price` * s.qty * t.royalty / 100 * ta.royaltyper / 100 + t.`advance`, 0) as Profits
FROM `titleauthor` as ta
LEFT JOIN `sales` as s
ON ta.`title_id`=s.`title_id`
LEFT JOIN `titles` as t
ON t.`title_id`=s.`title_id`
GROUP BY Title_ID, Author_ID, Profits) ar
GROUP BY Author_ID
ORDER BY SUM(Profits) DESC;

#Challenge 2

CREATE TEMPORARY TABLE publications.ch2
SELECT s.`title_id` as 'Title ID',
ta.`au_id` as 'Author ID',
COALESCE((t.`price` * s.qty * t.royalty / 100 * ta.royaltyper / 100),0) as 'Sales Royalty'
FROM `titleauthor` as ta
LEFT JOIN `sales` as s
ON ta.`title_id`=s.`title_id`
LEFT JOIN `titles` as t
ON t.`title_id`=s.`title_id`;

SELECT Title_ID as 'Title ID',
SUM(Aggregated_Royalties) as 'Aggregated Royalties'
FROM publications.ch2
GROUP BY Title_ID;

SELECT Author_ID as 'Author ID',
SUM(Profits) as 'Profits'
FROM publications.ch2_1
GROUP BY Author_ID
ORDER BY SUM(Profits) DESC;

#Challenge 3

CREATE TABLE most_profiting_authors
SELECT Author_ID as 'Author ID',
SUM(Profits) as 'Profits'
FROM
(SELECT s.`title_id` as Title_ID,
ta.`au_id` as Author_ID,
COALESCE(t.`price` * s.qty * t.royalty / 100 * ta.royaltyper / 100 + t.`advance`, 0) as Profits
FROM `titleauthor` as ta
LEFT JOIN `sales` as s
ON ta.`title_id`=s.`title_id`
LEFT JOIN `titles` as t
ON t.`title_id`=s.`title_id`
GROUP BY Title_ID, Author_ID, Profits) ar
GROUP BY Author_ID
ORDER BY SUM(Profits) DESC;