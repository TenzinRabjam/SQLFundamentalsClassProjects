mysql> DROP DATABASE IF EXISTS TOP_TEN_SONGS; CREATE DATABASE TOP_TEN_SONGS; USE TOP_TEN_SONGS; 
database changed

mysql> CREATE TABLE ARTIST (ARTIST_ID INT(5) PRIMARY KEY AUTO_INCREMENT, 
mysql> ARTIST_FIRST_NAME VARCHAR(20), ARTIST_LAST_NAME VARCHAR(20), PSEUDONYM CHAR(20));
0 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM ARTIST;
+-------------------+-------------+------+-----+---------+----------------+
| Field             | Type        | Null | Key | Default | Extra          |
+-------------------+-------------+------+-----+---------+----------------+
| ARTIST_ID         | int(5)      | NO   | PRI | NULL    | auto_increment |
| ARTIST_FIRST_NAME | varchar(20) | YES  |     | NULL    |                |
| ARTIST_LAST_NAME  | varchar(20) | YES  |     | NULL    |                |
| PSEUDONYM         | char(20)    | YES  |     | NULL    |                |
+-------------------+-------------+------+-----+---------+----------------+
4 rows in set (0.14 sec)

mysql> CREATE TABLE ALBUM (ALBUM_ID INT(5) PRIMARY KEY AUTO_INCREMENT, ALBUM_NAME VARCHAR(20), 
mysql> ALBUM_DESCRIPTION VARCHAR(50), YEAR INT(4), ARTIST_ID INT(5) NOT NULL, 
mysql> FOREIGN KEY(ARTIST_ID) REFERENCES ARTIST(ARTIST_ID));
0 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM ALBUM;
+-------------------+-------------+------+-----+---------+----------------+
| Field             | Type        | Null | Key | Default | Extra          |
+-------------------+-------------+------+-----+---------+----------------+
| ALBUM_ID          | int(5)      | NO   | PRI | NULL    | auto_increment |
| ALBUM_NAME        | varchar(20) | YES  |     | NULL    |                |
| ALBUM_DESCRIPTION | varchar(50) | YES  |     | NULL    |                |
| YEAR              | int(4)      | YES  |     | NULL    |                |
| ARTIST_ID         | int(5)      | NO   | MUL | NULL    |                |
+-------------------+-------------+------+-----+---------+----------------+
5 rows in set (0.16 sec)


mysql> CREATE TABLE SONG (SONG_ID  INT(5) PRIMARY KEY AUTO_INCREMENT, 
mysql> SONG_NAME VARCHAR(20), YOUTUBE_LINK VARCHAR(50), YEAR INT(4) 
mysql> REFERENCES ALBUM(YEAR), LENGTH TIME, SONG_DESCRIPTION VARCHAR(80), 
mysql> SONG_RANK INT(5), ARTIST_ID INT(5) NOT NULL, ALBUM_ID INT(5) NOT NULL,
mysql> FOREIGN KEY(ARTIST_ID) REFERENCES ARTIST(ARTIST_ID), FOREIGN KEY(ALBUM_ID) REFERENCES ALBUM(ALBUM_ID));
0 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM SONG;
+------------------+-------------+------+-----+---------+----------------+
| Field            | Type        | Null | Key | Default | Extra          |
+------------------+-------------+------+-----+---------+----------------+
| SONG_ID          | int(5)      | NO   | PRI | NULL    | auto_increment |
| ARTIST_ID        | int(5)      | YES  | MUL | NULL    |                |
| SONG_NAME        | varchar(20) | YES  |     | NULL    |                |
| YOUTUBE_LINK     | varchar(50) | YES  |     | NULL    |                |
| YEAR             | int(4)      | YES  |     | NULL    |                |
| LENGTH           | time        | YES  |     | NULL    |                |
| SONG_DESCRIPTION | varchar(80) | YES  |     | NULL    |                |
| SONG_RANK        | int(5)      | YES  |     | NULL    |                |
| ALBUM_ID         | int(5)      | NO   | MUL | NULL    |                |
+------------------+-------------+------+-----+---------+----------------+
9 rows in set (0.02 sec)

mysql> SHOW TABLES;
+-------------------------+
| Tables_in_top_ten_songs |
+-------------------------+
| album                   |
| artist                  |
| song                    |
+-------------------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO ARTIST 
mysql> VALUES
mysql> (1,'Micheal', 'Jackson', 'King of Pop');
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ARTIST 
mysql> VALUES
mysql> (2, 'Charles Otto','Puth Jr.','Charlie Puth');
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ARTIST 
mysql> VALUES
mysql> (3,'Adam','Levine','Maroon 5');
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ARTIST 
mysql> VALUES
mysql> (4,'Peter', 'Hernandez','Bruno Mars');
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ARTIST 
mysql> VALUES
mysql> (5,'Justin', 'Drew', 'Justin Bieber');
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ARTIST 
mysql> VALUES
mysql> (6,'Edward', 'Christopher', 'Ed Sheeran');
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM ARTIST;
+-----------+-------------------+------------------+---------------+
| ARTIST_ID | ARTIST_FIRST_NAME | ARTIST_LAST_NAME | PSEUDONYM     |
+-----------+-------------------+------------------+---------------+
|         1 | Micheal           | Jackson          | King          |
|         2 | Charles Otto      | Puth Jr.         | Charlie Puth  |
|         3 | Adam              | Levine           | Maroon 5      |
|         4 | Peter             | Hernandez        | Bruno Mars    |
|         5 | Justin            | Drew             | Justin Bieber |
|         6 | Edward            | Christopher      | Ed Sheeran    |
+-----------+-------------------+------------------+---------------+
6 rows in set (0.00 sec)

mysql> INSERT INTO ALBUM 
mysql> VALUES
mysql> (1,' BAD ', "Micheal Jackson's first production and it was before his facial surgery", 1982, 1);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ALBUM 
mysql> VALUES
mysql> (2,'Fast and Furious', "The most watched youtube video in the world", 2015, 2);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ALBUM 
mysql> VALUES
mysql> (3,'V', "This is song is Maroon five's most lovable video", 2014, 3);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ALBUM 
mysql> VALUES
mysql> (4,'Uptown Special', "My favourite dancing album", 2015, 4);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ALBUM 
mysql> VALUES
mysql> (5,'Purpose', "The most famous album of JB", 2015, 5);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO ALBUM 
mysql> VALUES
mysql> (6,'Divide', "The most trending album of 2017", 2017, 6);
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM ALBUM;
+----------+------------------+--------------------------------------------------+------+-----------+
| ALBUM_ID | ALBUM_NAME       | ALBUM_DESCRIPTION                                | YEAR | ARTIST_ID |
+----------+------------------+--------------------------------------------------+------+-----------+
|        1 | BAD              | Micheal Jackson's first production               | 1982 |         1 |
|        2 | Fast and Furious | The most watched youtube video in the world      | 2015 |         2 |
|        3 | V                | This is song is Maroon five's most lovable video | 2014 |         3 |
|        4 | Uptown Special   | My favourite dancing album                       | 2015 |         4 |
|        5 | Purpose          | The most famous album of JB                      | 2015 |         5 |
|        6 | Divide           | The most trending album of 2017                  | 2017 |         6 |
+----------+------------------+--------------------------------------------------+------+-----------+
6 rows in set (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (1,'Beat it', 'https://www.youtube.com/watch?v=ordxufdoqe0', 1982, 0458, "Beat it was the most famous song of BAD", 1, 1, 1);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (2,'Thriller', 'https://www.youtube.com/watch?v=sOnqjkJTMaA', 1982, 1342, "Thriller was the 2nd most famous song of BAD", 2, 1, 1);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (3,'Smooth Criminal', 'https://www.youtube.com/watch?v=h_D3VFfhvs4', 1982, 0925, "As I am a huge MJ fan my top 3 were of BAD", 3, 1, 1);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (4,'See You Again', 'https://www.youtube.com/watch?v=RgKAFK5djSk', 2015, 0357, "This song is close to my heart as I have to move on from India", 4, 2, 2);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (5,'Sugar', 'https://www.youtube.com/watch?v=09R8_2nJtjg', 2015, 0501, "A very catchy song which I love to play in Car", 5, 3, 3);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (6,'Uptown Funk', 'https://www.youtube.com/watch?v=OPf0YbXqDm0', 2014, 0430, "most favourite dancing song", 6, 4, 4);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (7,'Just the way you are', 'https://www.youtube.com/watch?v=LjhCEhWiKXk', 2010, 0401, "This makes me wanna go up to my crush and say You're Beautiful", 7, 4, 4);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (8,'Sorry', 'https://www.youtube.com/watch?v=fRh_vgS2dFE', 2015, 0325, "I don't know what type of dance is this but it's amazing?", 8, 5, 5);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (9,'Despacito', 'https://www.youtube.com/watch?v=72UO0v5ESUo', 2017, 0348, "My favourite famous Spanish song?", 9, 5, 5);
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SONG
mysql> VALUES
mysql> (10,'Shape Of You', 'https://www.youtube.com/watch?v=JGwWNGJdvx8', 2017, 0423, "My most favourite song this year(2017)?", 10, 6, 6);
Query OK, 0 rows affected (0.00 sec)

mysql> ALTER TABLE SONG MODIFY COLUMN ARTIST_ID INT(5) AFTER SONG_ID;
Query OK, 10 rows affected (0.17 sec)

mysql> SELECT * FROM SONG;
+---------+-----------+----------------------+---------------------------------------------+------+----------+----------------------------------------------------------------+-----------+----------+
| SONG_ID | ARTIST_ID | SONG_NAME            | YOUTUBE_LINK                                | YEAR | LENGTH   | SONG_DESCRIPTION                                               | SONG_RANK | ALBUM_ID |
+---------+-----------+----------------------+---------------------------------------------+------+----------+----------------------------------------------------------------+-----------+----------+
|       1 |         1 | Beat it              | https://www.youtube.com/watch?v=ordxufdoqe0 | 1982 | 00:04:58 | Beat it was the most famous song of BAD                        |         1 |        1 |
|       2 |         1 | Thriller             | https://www.youtube.com/watch?v=sOnqjkJTMaA | 1982 | 00:13:42 | Thriller was the 2nd most famous song of BAD                   |         2 |        1 |
|       3 |         1 | Smooth Criminal      | https://www.youtube.com/watch?v=h_D3VFfhvs4 | 1982 | 00:09:25 | As I am a huge MJ fan my top 3 were of BAD                     |         3 |        1 |
|       4 |         2 | See You Again        | https://www.youtube.com/watch?v=RgKAFK5djSk | 2015 | 00:03:57 | This song is close to my heart as I have to move on from India |         4 |        2 |
|       5 |         3 | Sugar                | https://www.youtube.com/watch?v=09R8_2nJtjg | 2015 | 00:05:01 | A very catchy song which I love to play in Car                 |         5 |        3 |
|       6 |         4 | Uptown Funk          | https://www.youtube.com/watch?v=OPf0YbXqDm0 | 2014 | 00:04:30 | most favourite dancing song                                    |         6 |        4 |
|       7 |         4 | Just the way you are | https://www.youtube.com/watch?v=LjhCEhWiKXk | 2010 | 00:04:01 | This makes me wanna go up to my crush and say You're Beautiful |         7 |        4 |
|       8 |         5 | Sorry                | https://www.youtube.com/watch?v=fRh_vgS2dFE | 2015 | 00:03:25 | I don't know what type of dance is this but it's amazing?      |         8 |        5 |
|       9 |         5 | Despacito            | https://www.youtube.com/watch?v=72UO0v5ESUo | 2017 | 00:03:48 | My favourite famous Spanish song?                              |         9 |        5 |
|      10 |         6 | Shape Of You         | https://www.youtube.com/watch?v=JGwWNGJdvx8 | 2017 | 00:04:23 | My most favourite song this year(2017)?                        |        10 |        6 |
+---------+-----------+----------------------+---------------------------------------------+------+----------+----------------------------------------------------------------+-----------+----------+
10 rows in set (0.00 sec)
mysql> exit;

mysql> CREATE VIEW TOP_TEN AS SELECT ALBUM.ALBUM_NAME, SONG.YEAR, SONG.LENGTH, SONG.SONG_NAME, SONG.YOUTUBE_LINK FROM SONG JOIN ALBUM ON ALBUM.ALBUM_ID = SONG.ALBUM_ID WHERE SONG_ID <= 10; 
Query OK, 0 rows affected (0.12 sec)

mysql> SELECT * FROM TOP_TEN;
+------------------+------+----------+----------------------+---------------------------------------------+
| ALBUM_NAME       | YEAR | LENGTH   | SONG_NAME            | YOUTUBE_LINK                                |
+------------------+------+----------+----------------------+---------------------------------------------+
| BAD              | 1982 | 00:04:58 | Beat it              | https://www.youtube.com/watch?v=ordxufdoqe0 |
| BAD              | 1982 | 00:13:42 | Thriller             | https://www.youtube.com/watch?v=sOnqjkJTMaA |
| BAD              | 1982 | 00:09:25 | Smooth Criminal      | https://www.youtube.com/watch?v=h_D3VFfhvs4 |
| Fast and Furious | 2015 | 00:03:57 | See You Again        | https://www.youtube.com/watch?v=RgKAFK5djSk |
| V                | 2015 | 00:05:01 | Sugar                | https://www.youtube.com/watch?v=09R8_2nJtjg |
| Uptown Special   | 2014 | 00:04:30 | Uptown Funk          | https://www.youtube.com/watch?v=OPf0YbXqDm0 |
| Uptown Special   | 2010 | 00:04:01 | Just the way you are | https://www.youtube.com/watch?v=LjhCEhWiKXk |
| Purpose          | 2015 | 00:03:25 | Sorry                | https://www.youtube.com/watch?v=fRh_vgS2dFE |
| Purpose          | 2017 | 00:03:48 | Despacito            | https://www.youtube.com/watch?v=72UO0v5ESUo |
| Divide           | 2017 | 00:04:23 | Shape Of You         | https://www.youtube.com/watch?v=JGwWNGJdvx8 |
+------------------+------+----------+----------------------+---------------------------------------------+
10 rows in set (0.10 sec)

mysql> CREATE VIEW TOP_FIVE AS SELECT ALBUM.ALBUM_NAME, SONG.YEAR, SONG.LENGTH, SONG.SONG_NAME, SONG.YOUTUBE_LINK FROM SONG JOIN ALBUM ON ALBUM.ALBUM_ID = SONG.ALBUM_ID WHERE SONG_ID <= 5 
    -> ORDER BY SONG.SONG_RANK;
Query OK, 0 rows affected (0.13 sec)

mysql> SELECT * FROM TOP_FIVE;
+------------------+------+----------+-----------------+---------------------------------------------+
| ALBUM_NAME       | YEAR | LENGTH   | SONG_NAME       | YOUTUBE_LINK                                |
+------------------+------+----------+-----------------+---------------------------------------------+
| BAD              | 1982 | 00:04:58 | Beat it         | https://www.youtube.com/watch?v=ordxufdoqe0 |
| BAD              | 1982 | 00:13:42 | Thriller        | https://www.youtube.com/watch?v=sOnqjkJTMaA |
| BAD              | 1982 | 00:09:25 | Smooth Criminal | https://www.youtube.com/watch?v=h_D3VFfhvs4 |
| Fast and Furious | 2015 | 00:03:57 | See You Again   | https://www.youtube.com/watch?v=RgKAFK5djSk |
| V                | 2015 | 00:05:01 | Sugar           | https://www.youtube.com/watch?v=09R8_2nJtjg |
+------------------+------+----------+-----------------+---------------------------------------------+
5 rows in set (0.00 sec)

mysql> CREATE VIEW WORST_FIVE AS SELECT ALBUM.ALBUM_NAME, SONG.YEAR, SONG.LENGTH, SONG.SONG_NAME, SONG.YOUTUBE_LINK FROM SONG JOIN ALBUM ON ALBUM.ALBUM_ID = SONG.ALBUM_ID WHERE SONG_ID > 5 
    -> ORDER BY SONG.SONG_RANK DESC;
Query OK, 0 rows affected (0.12 sec)

mysql> SELECT * FROM WORST_FIVE;
+----------------+------+----------+----------------------+---------------------------------------------+
| ALBUM_NAME     | YEAR | LENGTH   | SONG_NAME            | YOUTUBE_LINK                                |
+----------------+------+----------+----------------------+---------------------------------------------+
| Divide         | 2017 | 00:04:23 | Shape Of You         | https://www.youtube.com/watch?v=JGwWNGJdvx8 |
| Purpose        | 2017 | 00:03:48 | Despacito            | https://www.youtube.com/watch?v=72UO0v5ESUo |
| Purpose        | 2015 | 00:03:25 | Sorry                | https://www.youtube.com/watch?v=fRh_vgS2dFE |
| Uptown Special | 2010 | 00:04:01 | Just the way you are | https://www.youtube.com/watch?v=LjhCEhWiKXk |
| Uptown Special | 2014 | 00:04:30 | Uptown Funk          | https://www.youtube.com/watch?v=OPf0YbXqDm0 |
+----------------+------+----------+----------------------+---------------------------------------------+
5 rows in set (0.00 sec)

mysql> CREATE VIEW ALBUMS AS SELECT ALBUM.ALBUM_NAME, SONG.SONG_NAME, ALBUM.YEAR FROM ALBUM JOIN SONG ON SONG.ALBUM_ID = ALBUM.ALBUM_ID;
Query OK, 0 rows affected (0.09 sec)

mysql> SELECT * FROM ALBUMS;
+------------------+----------------------+------+
| ALBUM_NAME       | SONG_NAME            | YEAR |
+------------------+----------------------+------+
| BAD              | Beat it              | 1982 |
| BAD              | Thriller             | 1982 |
| BAD              | Smooth Criminal      | 1982 |
| Fast and Furious | See You Again        | 2015 |
| V                | Sugar                | 2014 |
| Uptown Special   | Uptown Funk          | 2015 |
| Uptown Special   | Just the way you are | 2015 |
| Purpose          | Sorry                | 2015 |
| Purpose          | Despacito            | 2015 |
| Divide           | Shape Of You         | 2017 |
+------------------+----------------------+------+
10 rows in set (0.00 sec)

mysql> CREATE VIEW ARTISTS AS SELECT ARTIST.ARTIST_FIRST_NAME, ARTIST.ARTIST_LAST_NAME, ARTIST.PSEUDONYM, ALBUM.ALBUM_NAME, SONG.SONG_NAME FROM ARTIST
    ->  JOIN SONG ON SONG.ARTIST_ID = ARTIST.ARTIST_ID
    ->  JOIN ALBUM ON ALBUM.ALBUM_ID = SONG.ALBUM_ID;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM ARTISTS;
+-------------------+------------------+---------------+------------------+----------------------+
| ARTIST_FIRST_NAME | ARTIST_LAST_NAME | PSEUDONYM     | ALBUM_NAME       | SONG_NAME            |
+-------------------+------------------+---------------+------------------+----------------------+
| Micheal           | Jackson          | King          | BAD              | Beat it              |
| Micheal           | Jackson          | King          | BAD              | Thriller             |
| Micheal           | Jackson          | King          | BAD              | Smooth Criminal      |
| Charles Otto      | Puth Jr.         | Charlie Puth  | Fast and Furious | See You Again        |
| Adam              | Levine           | Maroon 5      | V                | Sugar                |
| Peter             | Hernandez        | Bruno Mars    | Uptown Special   | Uptown Funk          |
| Peter             | Hernandez        | Bruno Mars    | Uptown Special   | Just the way you are |
| Justin            | Drew             | Justin Bieber | Purpose          | Sorry                |
| Justin            | Drew             | Justin Bieber | Purpose          | Despacito            |
| Edward            | Christopher      | Ed Sheeran    | Divide           | Shape Of You         |
+-------------------+------------------+---------------+------------------+----------------------+
10 rows in set (0.11 sec)

mysql> DROP VIEW ARTISTS;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE VIEW ARTISTS AS SELECT ARTIST.PSEUDONYM, ALBUM.ALBUM_NAME, SONG.SONG_NAME FROM ARTIST
    ->  JOIN SONG ON SONG.ARTIST_ID = ARTIST.ARTIST_ID
    ->  JOIN ALBUM ON ALBUM.ALBUM_ID = SONG.ALBUM_ID;
Query OK, 0 rows affected (0.11 sec)

mysql> SELECT * FROM ARTISTS;
+---------------+------------------+----------------------+
| PSEUDONYM     | ALBUM_NAME       | SONG_NAME            |
+---------------+------------------+----------------------+
| King          | BAD              | Beat it              |
| King          | BAD              | Thriller             |
| King          | BAD              | Smooth Criminal      |
| Charlie Puth  | Fast and Furious | See You Again        |
| Maroon 5      | V                | Sugar                |
| Bruno Mars    | Uptown Special   | Uptown Funk          |
| Bruno Mars    | Uptown Special   | Just the way you are |
| Justin Bieber | Purpose          | Sorry                |
| Justin Bieber | Purpose          | Despacito            |
| Ed Sheeran    | Divide           | Shape Of You         |
+---------------+------------------+----------------------+
10 rows in set (0.00 sec)

mysql> CREATE VIEW TOTAL_RUN_TIME AS SELECT SEC_TO_TIME(SUM(TIME_TO_SEC(LENGTH))) AS TOTAL_TIME FROM SONG WHERE SONG_ID <= 10 
    -> ORDER BY SONG.SONG_RANK;
Query OK, 0 rows affected (0.13 sec)
 
mysql> SELECT * FROM TOTAL_RUN_TIME;
+------------+
| TOTAL_TIME |
+------------+
| 00:57:10   |
+------------+
1 row in set (0.00 sec)

mysql> CREATE VIEW LONGEST_SONG_SHORTEST_SONG AS 
    -> (SELECT SONG.SONG_NAME , CONCAT(ARTIST.ARTIST_FIRST_NAME, " ", ARTIST.ARTIST_LAST_NAME) ARTIST_NAME, MIN(SONG.LENGTH) , SONG.YOUTUBE_LINK
    -> FROM SONG 
    -> JOIN ARTIST ON ARTIST.ARTIST_ID = SONG.ARTIST_ID 
    -> WHERE SONG.LENGTH = (SELECT MIN(SONG.LENGTH) FROM SONG))
    ->  UNION
    ->  (SELECT SONG_NAME,CONCAT(ARTIST.ARTIST_FIRST_NAME, " ", ARTIST.ARTIST_LAST_NAME) ARTIST_NAME, MAX(SONG.LENGTH), SONG.YOUTUBE_LINK
    -> FROM SONG 
    -> JOIN ARTIST ON ARTIST.ARTIST_ID = SONG.ARTIST_ID 
    -> WHERE SONG.LENGTH = (SELECT MAX(SONG.LENGTH) FROM SONG));
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM LONGEST_SONG_SHORTEST_SONG;
+-----------+-----------------+------------------+---------------------------------------------+
| SONG_NAME | ARTIST_NAME     | MIN(SONG.LENGTH) | YOUTUBE_LINK                                |
+-----------+-----------------+------------------+---------------------------------------------+
| Sorry     | Justin Drew     | 00:03:25         | https://www.youtube.com/watch?v=fRh_vgS2dFE |
| Thriller  | Micheal Jackson | 00:13:42         | https://www.youtube.com/watch?v=sOnqjkJTMaA |
+-----------+-----------------+------------------+---------------------------------------------+
2 rows in set (0.00 sec)

mysql> EXIT;
mysql> CREATE USER 'Lars' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.00 sec)
mysql> GRANT ALL ON TOP_TEN_SONGS.* TO 'Lars';
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE USER 'James' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.00 sec)
mysql> GRANT SELECT ON VIEW.* TO 'James'; 
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE USER 'Robert' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON TOP_TEN_SONGS.TOP_TEN TO 'Robert';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON TOP_TEN_SONGS.TOP_FIVE TO 'Robert';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON TOP_TEN_SONGS.WORST_FIVE TO 'Robert';
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE USER 'Kirk' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON TOP_TEN_SONGS.ALBUMS TO 'Kirk';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON TOP_TEN_SONGS.ARTISTS TO 'Kirk';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON TOP_TEN_SONGS.TOTAL_RUN_TIME TO 'Kirk';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON TOP_TEN_SONGS.LONGEST_SONG_SHORTEST_SONG TO 'Kirk';
Query OK, 0 rows affected (0.00 sec)

mysql> EXIT;
