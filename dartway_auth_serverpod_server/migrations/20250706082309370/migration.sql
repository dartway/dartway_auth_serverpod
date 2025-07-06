BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "dw_registration_data_stash" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dw_auth_data_stash" (
    "id" bigserial PRIMARY KEY,
    "type" text NOT NULL,
    "identifier" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "data" json NOT NULL
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "dw_phone_verification_request" ADD COLUMN "stashDataId" bigint;
ALTER TABLE ONLY "dw_phone_verification_request"
    ADD CONSTRAINT "dw_phone_verification_request_fk_0"
    FOREIGN KEY("stashDataId")
    REFERENCES "dw_auth_data_stash"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR dartway_auth_serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dartway_auth_serverpod', '20250706082309370', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250706082309370', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
