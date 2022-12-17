-- --------------------------------------------------------------------------------------------------
-- 
-- UU Homework Assignment 05 
-- 
-- DB doucovanie -> PostgreSQL DDL 
-- 
-- @Michal_Durik
-- --------------------------------------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS predmety (
    id              INT PRIMARY KEY NOT NULL,
    predmet         VARCHAR(250) NOT NULL,
    osnova          TEXT,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS vyucujici (
    id              INT PRIMARY KEY NOT NULL,
    jmeno           VARCHAR(150) NOT NULL,
    lokalita        VARCHAR(150) NOT NULL,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS zaci (
    id              INT PRIMARY KEY NOT NULL,
    jmeno           VARCHAR(150) NOT NULL,
    lokalita        VARCHAR(150) NOT NULL,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS doucovani (
    id              INT PRIMARY KEY NOT NULL,
    datum           DATE NOT NULL,
    popis           VARCHAR(250) NOT NULL,
    ukol            VARCHAR(250),
    poznamka        VARCHAR(250),
    vyucujici_id    INT NOT NULL,
    zaci_id         INT NOT NULL,
    predmety_id     INT NOT NULL,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT      doucovani_vyucujici_fk    FOREIGN KEY(vyucujici_id)   REFERENCES vyucujici(id),
    CONSTRAINT      doucovani_zaci_fk         FOREIGN KEY(zaci_id)        REFERENCES zaci(id),
    CONSTRAINT      doucovani_predmety_fk     FOREIGN KEY(predmety_id)    REFERENCES predmety(id)
);

-- INDEX 
CREATE INDEX predmet_index ON predmety(predmet);

-- FUNCTION trigger_set_timestamp for UPDATED_AT
CREATE OR REPLACE FUNCTION trigger_set_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- TRIGGER set_timestamp for UPDATED_AT
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON predmety
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

CREATE TRIGGER set_timestamp
BEFORE UPDATE ON vyucujici
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

CREATE TRIGGER set_timestamp
BEFORE UPDATE ON zaci
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

CREATE TRIGGER set_timestamp
BEFORE UPDATE ON doucovani
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

-- VIEW all data
CREATE VIEW doucovani_view AS
    SELECT  TO_CHAR(d.datum, 'YYYY-MM-DD') AS datum,
            v.jmeno AS vyucujici_jmeno,
            v.lokalita AS vyucujici_lokalita,
            z.jmeno AS zak_jmeno,
            z.lokalita AS zak_lokalita,
            p.predmet,
            d.poznamka,
            p.osnova,
            d.popis,
            d.ukol
    FROM doucovani d
        INNER JOIN predmety p ON d.predmety_id = p.id
        INNER JOIN vyucujici v ON d.vyucujici_id = v.id
        INNER JOIN zaci z ON d.zaci_id = z.id
    ORDER BY d.datum DESC;