SELECT ta.`au_id` AS 'AUTHOR ID',
a.`au_lname` AS 'LAST NAME',
a.`au_fname` AS 'FIRST NAME',
t.`title` AS 'TITLE',
p.`pub_name` AS 'PUBLISHER'
FROM `titleauthor` AS ta
LEFT JOIN `authors` AS a
ON  ta.`au_id`=a.`au_id`
LEFT JOIN `titles` AS t
ON t.`title_id`=ta.`title_id`
LEFT JOIN `publishers` as p
ON p.`pub_id`=t.`pub_id`
ORDER BY ta.`au_id` ASC;

SELECT ta.`au_id` AS 'AUTHOR ID',
a.`au_lname` AS 'LAST NAME',
a.`au_fname` AS 'FIRST NAME',
p.`pub_name` AS 'PUBLISHER',
COUNT(p.`pub_name`) AS 'TITLE COUNT'
FROM `titleauthor` AS ta
LEFT JOIN `authors` AS a
ON  ta.`au_id`=a.`au_id`
LEFT JOIN `titles` AS t
ON t.`title_id`=ta.`title_id`
LEFT JOIN `publishers` as p
ON p.`pub_id`=t.`pub_id`
GROUP BY ta.`au_id`, p.`pub_name`
ORDER BY ta.`au_id` DESC;

SELECT ta.`au_id` AS 'AUTHOR ID',
a.`au_lname` AS 'LAST NAME',
a.`au_fname` AS 'FIRST NAME',
SUM(s.`qty`) AS 'TOTAL'
FROM `titleauthor` as ta
LEFT JOIN `authors` as a
ON ta.`au_id`=a.`au_id`
LEFT JOIN `sales` AS s
ON s.`title_id`=ta.`title_id`
GROUP BY ta.`au_id`
ORDER BY SUM(s.`qty`) DESC
LIMIT 3;

SELECT ta.`au_id` AS 'AUTHOR ID',
a.`au_lname` AS 'LAST NAME',
a.`au_fname` AS 'FIRST NAME',
COALESCE(SUM(s.`qty`),0) AS 'TOTAL'
FROM `titleauthor` as ta
LEFT JOIN `authors` as a
ON ta.`au_id`=a.`au_id`
LEFT JOIN `sales` AS s
ON s.`title_id`=ta.`title_id`
GROUP BY ta.`au_id`
ORDER BY SUM(s.`qty`) DESC;
