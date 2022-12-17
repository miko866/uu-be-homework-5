-- Vytvořte VIEW, které obsahuje všechny hodnotové atributy (tedy bez ID) všech tabulek
SELECT * FROM doucovani_view;

-- Vytvořte dotazy, které budou obsahovat seznam žáků a počet jejich doučování
SELECT jmeno, count(*) as pocet_doucovani FROM doucovani d
	INNER JOIN zaci z ON d.zaci_id = z.id
GROUP BY jmeno
ORDER BY pocet_doucovani DESC;

-- Vytvořte dotaz, který bude obsahovat seznam tří vyučujících s nejvyšším počtem doučování
SELECT jmeno, count(*) as pocet_doucovani FROM doucovani d
	INNER JOIN vyucujici v ON d.vyucujici_id = v.id
GROUP BY jmeno
ORDER BY pocet_doucovani DESC
LIMIT 3;

-- Vytvořte dotaz, který bude obsahovat seznam vyučujících seřazených podle počtu doučovaných žáků
SELECT v.jmeno AS vyucujici_jmeno, count(DISTINCT z.jmeno) as pocet_zaku FROM doucovani d
	INNER JOIN vyucujici v ON d.vyucujici_id = v.id
	INNER JOIN zaci z ON d.zaci_id = z.id
GROUP BY v.jmeno
ORDER BY pocet_zaku DESC;

-- Export to CSV
docker exec -it -u postgres postgres_db psql -d doucovani -c "COPY (SELECT * FROM doucovani_view) TO STDOUT CSV HEADER" > ./mongodb/doucovani.csv
