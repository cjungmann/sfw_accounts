SET default_storage_engine=InnoDB;

-- ----------------------------
CREATE TABLE IF NOT EXISTS Salt
(
   id_user INT UNSIGNED NOT NULL PRIMARY KEY,
   salt    CHAR(32)
);

-- ------------------------------------
CREATE TABLE IF NOT EXISTS Session_Info
(
   id_session INT UNSIGNED UNIQUE KEY,

   -- Application-specific session values:
   id_user    INT UNSIGNED,
   id_account INT UNSIGNED,
   handle     VARCHAR(128),

   INDEX(id_session)
);

-- -----------------------------
CREATE TABLE IF NOT EXISTS Email
(
   id    INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   email VARCHAR(128) UNIQUE
);

-- ----------------------------
CREATE TABLE IF NOT EXISTS User
(
   id       INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   id_email INT UNSIGNED NOT NULL,
   handle   VARCHAR(128) UNIQUE,
   INDEX(id_email)
);

-- -------------------------------
CREATE TABLE IF NOT EXISTS Account
(
   id     INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   handle VARCHAR(20) UNIQUE,
   name   VARCHAR(80)
);

-- -- -------------------------------
-- CREATE TABLE IF NOT EXISTS Address
-- (
--    id_account INT UNSIGNED NOT NULL,
--    id         INT UNSIGNED NOT NULL,
--    address    VARCHAR(80),
--    city       VARCHAR(40),
--    state      INT UNSIGNED,
--    zipcode    VARCHAR(10)
-- );

-- -- ------------------------------
-- CREATE TABLE IF NOT EXISTS Person
-- (
--    id_account INT UNSIGNED NOT NULL,
--    id         INT UNSIGNED NOT NULL,
-- );


