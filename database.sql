CREATE TABLE set (
	"id" integer PRIMARY KEY UNIQUE,
	"session_id" integer NOT NULL,
	"rep" integer,
	"weight_lbs" integer
);

CREATE TABLE exercise (
	"ID" SERIAL PRIMARY KEY,
	"name" varchar(255) ,
	"muscle_group" varchar(255)
);

CREATE TABLE session (
	"id" SERIAL PRIMARY KEY,
	"exercise_id" integer REFERENCES exercise,
	"set_id" integer REFERENCES set
);

CREATE TABLE schedule (
	"id" SERIAL PRIMARY KEY,
	"day_name" varchar(20),
	"session_id" integer REFERENCES "session"
	);

CREATE TABLE "user" (
	"id" SERIAL PRIMARY KEY,
	"password" varchar(255) NOT NULL DEFAULT 'NOT NULL',
	"username" varchar(255) NOT NULL UNIQUE,
	"access_level" integer NOT NULL DEFAULT '0',
	"schedule_id" integer REFERENCES schedule
);
