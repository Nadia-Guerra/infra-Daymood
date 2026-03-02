-- EXTENSION PARA UUID AUTOMÁTICO
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- TABLAS PRINCIPALES
CREATE TABLE "categories" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" varchar(50)
);

CREATE TABLE "forums" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "min_age" int,
    "max_age" int,
    "id_category" int
);

CREATE TABLE "users" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "firebase_uid" varchar(200) UNIQUE NOT NULL,
    "username" varchar(50) UNIQUE,
    "email" varchar(100) UNIQUE,
    "birth_day" date NOT NULL,
    "start_date" timestamp DEFAULT CURRENT_TIMESTAMP,
    "id_forum" UUID
);

CREATE TABLE "emotions" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "name" varchar(30) NOT NULL,
    "img_url" varchar(200) NOT NULL,
    "id_user" UUID NULL,
    "id_category" int NOT NULL
);

CREATE TABLE "habits" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "name" varchar(20) NOT NULL,
    "id_category" int NOT NULL
);

CREATE TABLE "records" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "date" date NOT NULL,
    "note" varchar(200),
    "id_user" UUID NOT NULL,
    "id_emotion" UUID NOT NULL
);

CREATE TABLE "record_habits" (
    "id_record" UUID NOT NULL,
    "id_habit" UUID NOT NULL,
    PRIMARY KEY ("id_record", "id_habit")
);

CREATE TABLE "favorites" (
    "id_emotion" UUID,
    "id_user" UUID,
    PRIMARY KEY ("id_user", "id_emotion")
);

CREATE TABLE "user_forum" (
    "id_user" UUID PRIMARY KEY,
    "id_forum" UUID
);

CREATE TABLE "posts" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "id_user" UUID NOT NULL,
    "id_category" INT NOT NULL,
    "id_forum" UUID NOT NULL,
    "title" varchar(100) NOT NULL,
    "content" varchar(500) NOT NULL,
    "created_at" timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "comments" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "content" varchar(200),
    "id_post" UUID NOT NULL,
    "id_user" UUID NOT NULL,
    "created_at" timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "weekly_form" (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    "id_user" UUID NOT NULL,
    "date" DATE NOT NULL,
    "answers" jsonb
);

-- LLAVES FORÁNEAS (CONSTRAINTS)
ALTER TABLE "emotions" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");
ALTER TABLE "emotions" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");
ALTER TABLE "habits" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");
ALTER TABLE "records" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");
ALTER TABLE "records" ADD FOREIGN KEY ("id_emotion") REFERENCES "emotions" ("id");
ALTER TABLE "record_habits" ADD FOREIGN KEY ("id_record") REFERENCES "records" ("id");
ALTER TABLE "record_habits" ADD FOREIGN KEY ("id_habit") REFERENCES "habits" ("id");
ALTER TABLE "favorites" ADD FOREIGN KEY ("id_emotion") REFERENCES "emotions" ("id");
ALTER TABLE "favorites" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");
ALTER TABLE "users" ADD FOREIGN KEY ("id_forum") REFERENCES "forums" ("id");
ALTER TABLE "posts" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");
ALTER TABLE "posts" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");
ALTER TABLE "posts" ADD FOREIGN KEY ("id_forum") REFERENCES "forums" ("id");
ALTER TABLE "comments" ADD FOREIGN KEY ("id_post") REFERENCES "posts" ("id");
ALTER TABLE "comments" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");
ALTER TABLE "weekly_form" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");
ALTER TABLE "user_forum" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");
ALTER TABLE "user_forum" ADD FOREIGN KEY ("id_forum") REFERENCES "forums" ("id");
ALTER TABLE "forums" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");