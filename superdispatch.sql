.header on
.mode column

CREATE TABLE mountains (id INTEGER PRIMARY KEY, name TEXT, height_meters INTEGER);

CREATE TABLE mountaineers (id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT);

CREATE TABLE ascents (mountain_id INTEGER, mountaineer_id INTEGER, ascent_date DATE);

INSERT INTO mountains VALUES
  (1, 'Mount Everest', 8849),
  (2, 'Kilimanjaro', 5895),
  (3, 'Denali', 6190),
  (4, 'Chimborazo', 6263),
  (5, 'K2', 8611), -- '1954-07-31'
  (6, 'Piz Palü', 3900), -- '1835-08-12'
  (7, 'Cho Oyu', 8188); --'1954-10-19'

INSERT INTO mountaineers VALUES
  (1, 'Edmund', 'Hillary'),
  (2, 'Tenzing', 'Norgay'),
  (3, 'Ernst', 'Schmied'),
  (4, 'Jürg', 'Marmet'),
  (5, 'Dolf', 'Reist'),
  (6, 'Hans', 'Meyer'),
  (7, 'Ludwig', 'Purtscheller'),
  (8, 'Hudson', 'Stuck'),
  (9, 'Harry', 'Karstens'),
  (10, 'Walter', 'Harper'),
  (11, 'Robert', 'Tatum'),
  (12, 'Jean', 'Carrel'),
  (13, 'Louis', 'Carrel');

INSERT INTO ascents VALUES
  (1, 1, '1953-05-29'),
  (1, 2, '1953-05-29'),
  (1, 3, '1956-05-23'),
  (1, 4, '1956-05-23'),
  (1, 5, '1956-05-24'),
  (2, 6, '1889-10-06'),
  (2, 7, '1889-10-06'),
  (3, 8, '1913-06-07'),
  (3, 9, '1913-06-08'),
  (3, 10, '1913-06-09'),
  (3, 11, '1913-06-07'),
  (4, 12, '1880-01-04'),
  (4, 13, '1880-01-04');

.print 
.print 'Show all mountain ascents with respective mountaineers.'
.print 'In addition you should include mountains without ascents.'

SELECT mn.name, mr.first_name, mr.last_name, ac.ascent_date
FROM mountains as mn
LEFT JOIN ascents as ac ON mn.id = ac.mountain_id
LEFT JOIN mountaineers as mr ON mr.id = ac.mountaineer_id
;
  
.print
.print 'Show the number of ascents for every mountain with the first ascent date.'

SELECT mn.name, count(ac.mountain_id), min(ac.ascent_date)
FROM mountains as mn
LEFT JOIN ascents as ac ON mn.id = ac.mountain_id
GROUP BY mn.name
;

.print
.print 'Show all mountains that have more than 4 ascents'
.print 'or such mountains that were ascended before the XX century (1900-01-01)'

SELECT mn.name, count(ac.mountain_id) as cnt, min(ac.ascent_date) as first_ascend
FROM mountains as mn
INNER JOIN ascents as ac ON mn.id = ac.mountain_id
GROUP BY mn.name
HAVING cnt > 4 OR first_ascend <= "1900-01-01"
;
