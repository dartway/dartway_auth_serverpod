BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "dw_phone_auth" DROP COLUMN "userExtraData";
--
-- ACTION CREATE TABLE
--
CREATE TABLE "dw_phone_failed_sign_in" (
    "id" bigserial PRIMARY KEY,
    "phoneNumber" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_phone_failed_sign_in_email_idx" ON "dw_phone_failed_sign_in" USING btree ("phoneNumber");
CREATE INDEX "serverpod_phone_failed_sign_in_time_idx" ON "dw_phone_failed_sign_in" USING btree ("time");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dw_registration_data_stash" (
    "id" bigserial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "data" json NOT NULL
);


--
-- MIGRATION VERSION FOR dartway_auth_serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dartway_auth_serverpod', '20250703084300076', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250703084300076', "timestamp" = now();

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
