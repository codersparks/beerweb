CREATE TABLE IF NOT EXISTS BEER
(
    RFID varchar(255) PRIMARY KEY NOT NULL,
    LAST_VOTE varchar(255),
    NUM_RATINGS integer NOT NULL,
    PUMP_ID varchar(255),
    RUNNING_TOTAL_RATING integer NOT NULL
);
CREATE UNIQUE INDEX IF NOT EXISTS UK_O5463U0OXTFP87C8954LMSY56_INDEX_1 ON BEER (PUMP_ID);

CREATE TABLE IF NOT EXISTS PUMP
(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    RFID varchar(255),
    BEERNAME varchar(255),
    PUMP_NAME varchar(255) NOT NULL
);
CREATE UNIQUE INDEX IF NOT EXISTS UK_KCLMB4R6B95LE22AYC3FLD8U3_INDEX_2 ON PUMP (RFID);
CREATE UNIQUE INDEX IF NOT EXISTS UK_TDMX0M0G9FL457KPUKE1D9QLX_INDEX_2 ON PUMP (PUMP_NAME);
CREATE INDEX IF NOT EXISTS PUMP_RFID_IDX ON PUMP (RFID);
CREATE INDEX IF NOT EXISTS PUMP_NAME_IDX ON PUMP (PUMP_NAME);

CREATE TABLE IF NOT EXISTS RATING
(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    RATING integer NOT NULL,
    RFID varchar(255) NOT NULL,
    TIMESTAMP timestamp NOT NULL
);
CREATE INDEX IF NOT EXISTS RATING_RFID_IDX ON RATING (RFID);
CREATE INDEX IF NOT EXISTS RATING_TIME_IDX ON RATING (TIMESTAMP)