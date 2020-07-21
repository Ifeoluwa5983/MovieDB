use movie;

INSERT INTO actor VALUES(
     '1001', 'John', 'Brown', 'M');
INSERT INTO actor VALUES(
      '1002', 'Jane', 'White', 'F');
INSERT INTO actor VALUES(
       '1003', 'Sam', 'Green', 'M');
       
INSERT INTO director VALUES(
     '10001', 'Samuel', 'Doe');
INSERT INTO director VALUES(
      '10002', 'Joanna', 'Matt');
INSERT INTO director VALUES(
       '10003', 'Doe', 'Emmanuel');
       
INSERT INTO movie VALUES(
     '101', 'American Beauty', '1999', '20','Chinese', NULL, NULL);
INSERT INTO movie VALUES(
      '102', 'Mission1', '1998', 23,'American', NULL,Null);
INSERT INTO movie VALUES(
       '103', 'Eyes Wide Shut', '1997', '16', 'Korean',null,null); 
              
       
INSERT INTO movie_cast VALUES(
     '1001', '101', 'Father');
INSERT INTO movie_cast VALUES(
      '1002', '102', 'Mother');
INSERT INTO movie_cast VALUES(
       '1003', '103', 'Child');

INSERT INTO reviewer VALUES(
      '001', 'John Doe');
INSERT INTO reviewer VALUES(
      '002', 'Jane Doe');
INSERT INTO reviewer VALUES(
	  '003', 'Sam Doe');
             
INSERT INTO rating VALUES(
     111, 001,  7, 3);
INSERT INTO rating VALUES(
      112, 002,  6, 4);
INSERT INTO rating VALUES(
       113, 003, 8, 3);
       
INSERT INTO movie_genres VALUES(
     '111','101');
 INSERT INTO movie_genres VALUES(
	'112','102');
INSERT INTO movie_genres VALUES(
    '113','103');
    
INSERT INTO movie_direction VALUES(
     '10001','101');
 INSERT INTO movie_direction VALUES(
	'10002','102');
INSERT INTO movie_direction VALUES(
    '10003','103');    