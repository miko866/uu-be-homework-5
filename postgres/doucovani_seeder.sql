INSERT INTO vyucujici VALUES (101,'Jan', 'Praha');
INSERT INTO vyucujici VALUES (102,'Petr', 'Brno');
INSERT INTO vyucujici VALUES (103,'Lenka', 'Praha');
INSERT INTO vyucujici VALUES (104,'Hanka', 'Praha');
INSERT INTO vyucujici VALUES (105,'Bill', 'New York');

INSERT INTO zaci VALUES (201,'Míša', 'Praha');
INSERT INTO zaci VALUES (202,'Lada', 'Brno');
INSERT INTO zaci VALUES (203,'Jana', 'Praha');
INSERT INTO zaci VALUES (204,'Honza', 'Praha');
INSERT INTO zaci VALUES (205,'Vanesa', 'České Budějovice');

INSERT INTO predmety VALUES(999, 'English', 'A2');
INSERT INTO predmety VALUES(998, 'Český jazky', 'Výjmenovaná slova');
INSERT INTO predmety VALUES(997, 'Dějepis', 'Pravěk + středověk');
INSERT INTO predmety VALUES(996, 'Zěměpis', 'Evropa');
INSERT INTO predmety VALUES(995, 'Matematika', 'rovnice');
INSERT INTO predmety VALUES(994, 'Fyzika', '');
INSERT INTO predmety VALUES(993, 'Chemie', '');

INSERT INTO doucovani VALUES(1, TO_DATE('08-10-2022', 'DD-MM-YYYY'),'nepravidelná slovesa','','', 105, 205, 999);
INSERT INTO doucovani VALUES(2, TO_DATE('08-10-2022', 'DD-MM-YYYY'), 'zlomky','','', 102, 204, 995);
INSERT INTO doucovani VALUES(3, TO_DATE('08-10-2022', 'DD-MM-YYYY'), 'monarchie a demokracie v Evropě','','', 103, 202, 996);
INSERT INTO doucovani VALUES(4, TO_DATE('09-10-2022', 'DD-MM-YYYY'), 'rychlost','','', 104, 201, 994);
INSERT INTO doucovani VALUES(5, TO_DATE('09-10-2022', 'DD-MM-YYYY'), 'geometrie','','', 104, 205, 995);
INSERT INTO doucovani VALUES(6, TO_DATE('10-10-2022', 'DD-MM-YYYY'), 'chemické názvosloví','','', 104, 204, 993);
INSERT INTO doucovani VALUES(7, TO_DATE('10-10-2022', 'DD-MM-YYYY'), 'renesance','','', 103, 201, 997);
INSERT INTO doucovani VALUES(8, TO_DATE('10-10-2022', 'DD-MM-YYYY'), 'slovní druhy','','', 101, 203, 998);
INSERT INTO doucovani VALUES(9, TO_DATE('11-10-2022', 'DD-MM-YYYY'), 'diktáty','','', 103, 203, 998);
INSERT INTO doucovani VALUES(10, TO_DATE('11-10-2022', 'DD-MM-YYYY'), 'zrychlení','','', 104, 201, 994);
INSERT INTO doucovani VALUES(11, TO_DATE('11-10-2022', 'DD-MM-YYYY'), 'těkavé látky','','', 104, 204, 993);
INSERT INTO doucovani VALUES(12, TO_DATE('11-10-2022', 'DD-MM-YYYY'), 'nepravidelná slovesa','','', 105, 205, 999);
INSERT INTO doucovani VALUES(13, TO_DATE('13-10-2022', 'DD-MM-YYYY'), 'monarchie a demokracie v Evropě','','', 103, 202, 996);
