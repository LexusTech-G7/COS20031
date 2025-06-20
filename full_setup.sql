/* =========================================================================
   Viva-Engage demo schema  —  MySQL ≥ 8.0
   =========================================================================
   1.  USE the schema you already own  (change the line below)
   2.  Drops ­> creates ­> seeds mock rows
   ========================================================================= */

USE `COS20031_bitdrawnmy`;   -- << change to your provisioned schema

-- ─── 1. CLEAN SLATE ──────────────────────────────────────────────────────
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS
  Notification, `Like`, Attachment, PostTag, Tag,
  Question, Poll, Comment, Post, Community, `User`;
SET FOREIGN_KEY_CHECKS = 1;

-- ─── 2. TABLES ───────────────────────────────────────────────────────────
/* the 11 CREATE TABLE statements exactly as in the long script you pasted.
   (unchanged – back-ticked identifiers, ENUMs, ON DELETE rules, etc.)     */

-- copy-paste CREATE TABLE User …           ↓
-- copy-paste CREATE TABLE Community …      ↓
-- … continue down to Question …

-- ─── 3. MOCK DATA ────────────────────────────────────────────────────────
/*  same INSERT blocks you already have: Users → Communities → Posts …     */

-- (INSERT INTO User …)
-- (INSERT INTO Community …)
-- …

/* Tag/post-tag seed rewritten to use hard IDs for speed */
INSERT INTO Tag (tagID,tagText) VALUES
  (1,'maintenance'),(2,'urgent'),(3,'safety'),(4,'policy'),
  (5,'kpi'),(6,'report'),(7,'hr'),(8,'onboarding'),
  (9,'photo'),(10,'issue'),(11,'poll'),(12,'roster'),
  (13,'incident'),(14,'hse'),(15,'question'),(16,'lube');

INSERT INTO PostTag (postID,tagID) VALUES
  (1001,1),(1001,2),
  (1002,3),(1002,4),
  (1003,5),(1003,6),
  (1004,7),(1004,8),
  (1005,9),(1005,10),
  (1006,11),(1006,12),
  (1007,13),(1007,14),
  (1008,15),(1008,16);

-- Poll & Question rows unchanged
INSERT INTO Poll       VALUES (6001,1006,'Switch to 21/21 roster?','["Yes","No","Undecided"]',172800);
INSERT INTO Question   VALUES (7001,1008,'Which grease best for top-drive?',TRUE,'2025-06-03 14:00',2008);

-- ─── 4. QUICK CHECK ──────────────────────────────────────────────────────
SELECT COUNT(*) AS users    FROM `User`;
SELECT COUNT(*) AS posts    FROM Post;
SELECT COUNT(*) AS comments FROM Comment;
