CREATE TABLE SC_COACHES
(
  SC_COACH_ID	INT NOT NULL AUTO_INCREMENT,
  FIRST_NAME 	VARCHAR(30) NOT NULL,
  LAST_NAME 	VARCHAR(30) NOT NULL,
  NICKNAME 		VARCHAR(30),
  PRIMARY KEY 	(SC_COACH_ID)
);

INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('James','Garretto','Garter');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Lester','Ilagan','Lassy');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Luke','Kapulica','Kappaz');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Paul','McGrath','Pmac');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Anthony','Melino','Melons');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Jordan','Merceica','Jmerc');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Simon','Minness','Chief');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Mark','Richards','Richo');
INSERT INTO SC_COACHES (FIRST_NAME,LAST_NAME,NICKNAME) VALUES ('Lachie','Nunn','Autobot');
