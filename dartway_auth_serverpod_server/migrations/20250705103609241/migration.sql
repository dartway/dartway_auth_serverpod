BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "dw_phone_verification_request" ADD COLUMN "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP;

--
-- MIGRATION VERSION FOR dartway_auth_serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dartway_auth_serverpod', '20250705103609241', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250705103609241', "timestamp" = now();

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
