BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "dw_phone_auth" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dw_phone_verification_request" (
    "id" bigserial PRIMARY KEY,
    "requestType" text NOT NULL,
    "phoneNumber" text NOT NULL,
    "hash" text NOT NULL,
    "expirationTime" timestamp without time zone NOT NULL,
    "isUsed" boolean NOT NULL DEFAULT false
);

-- Indexes
CREATE INDEX "serverpod_phone_auth_phone" ON "dw_phone_verification_request" USING btree ("phoneNumber");


--
-- MIGRATION VERSION FOR dartway_auth_serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dartway_auth_serverpod', '20250704055919594', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250704055919594', "timestamp" = now();

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
