-- Table: analytic.f_game_user

DROP TABLE IF EXISTS analytic.f_game_user;

CREATE TABLE IF NOT EXISTS analytic.f_game_user
(
    f_game_user_id bigint NOT NULL,
    date_key bigint NOT NULL,
    user_key bigint,
    total_time_watching_ads_second double precision NOT NULL DEFAULT 0,
    total_time_in_game_second double precision NOT NULL DEFAULT 0,
    game_key bigint NOT NULL,
    total_pay_in_game_usd double precision NOT NULL DEFAULT 0,
    CONSTRAINT f_game_user_pkey PRIMARY KEY (f_game_user_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS analytic.f_game_user
    OWNER to admin;


INSERT INTO analytic.f_game_user(
	f_game_user_id, date_key, user_key, total_time_watching_ads_second, total_time_in_game_second, game_key, total_pay_in_game_usd)
	VALUES 
	(2, 20211001, 1, 20, 3000, 2, 0),
	(3, 20211001, 2, 20, 3000, 1, 0),
	(4, 20211101, 1, 20, 3000, 1, 0),
	(5, 20211201, 2, 20, 3000, 1, 0),
	(6, 20211002, 1, 20, 3000, 2, 0),
	(7, 20211012, 2, 20, 3000, 2, 0),
	(8, 20211003, 1, 20, 3000, 2, 0),
	(9, 20211004, 2, 20, 3000, 2, 0),
	(10, 20211005, 2, 20, 3000, 2, 0),
	(11, 20211006, 2, 20, 3000, 1, 0),
	(12, 20211007, 1, 20, 3000, 2, 0),
	(13, 20211008, 1, 20, 3000, 1, 0),
	(14, 20211001, 3, 20, 3000, 2, 0),
	(15, 20211001, 5, 20, 3000, 1, 0),
	(16, 20211001, 1, 20, 3000, 2, 0),
	(17, 20211001, 1, 20, 3000, 2, 0),
	(18, 20211001, 4, 20, 3000, 2, 0),
	(19, 20211001, 5, 20, 3000, 2, 0),
	(20, 20211001, 1, 20, 3000, 2, 0),
	(21, 20211001, 1, 20, 3000, 2, 0),
	(22, 20211001, 1, 20, 3000, 1, 0),
	(23, 20211001, 2, 20, 3000, 2, 0),
	(24, 20211001, 1, 20, 3000, 2, 0),
	(25, 20211001, 1, 20, 3000, 1, 0),
	(26, 20211001, 2, 20, 3000, 2, 0),
	(27, 20211001, 1, 20, 3000, 2, 0),
	(28, 20211001, 1, 20, 3000, 2, 0),
	(29, 20211001, 1, 20, 3000, 1, 0),
	(30, 20211001, 2, 20, 3000, 2, 0),
	(31, 20211001, 1, 20, 3000, 2, 0),
	(32, 20211001, 1, 20, 3000, 2, 0),
	(33, 20211001, 1, 20, 3000, 2, 0),
	(34, 20211001, 3, 20, 3000, 2, 0),
	(35, 20211001, 1, 20, 3000, 1, 0),
	(36, 20211001, 1, 20, 3000, 2, 0),
	(37, 20211001, 1, 20, 3000, 2, 0),
	(38, 20211001, 1, 20, 3000, 2, 0),
	(39, 20211001, 1, 20, 3000, 2, 0),
	(40, 20211201, 1, 20, 3000, 2, 0),
	(41, 20211201, 1, 20, 3000, 1, 0),
	(42, 20211201, 1, 20, 3000, 2, 0),
	(43, 20211001, 4, 20, 3000, 2, 0),
	(44, 20211001, 1, 20, 3000, 2, 0),
	(45, 20211001, 1, 20, 3000, 2, 0),
	(46, 20211001, 1, 20, 3000, 2, 0),
	(47, 20211001, 4, 20, 3000, 2, 0),
	(48, 20211011, 1, 20, 3000, 2, 0),
	(49, 20211011, 1, 20, 3000, 2, 0),
	(50, 20211011, 1, 20, 3000, 2, 0),
	(51, 20211011, 1, 20, 3000, 1, 0),
	(52, 20211011, 1, 20, 3000, 2, 0),
	(53, 20211011, 2, 20, 3000, 2, 0),
	(54, 20211011, 1, 20, 3000, 2, 0),
	(55, 20211001, 1, 20, 3000, 2, 0),
	(56, 20211001, 4, 20, 3000, 2, 0)
	;