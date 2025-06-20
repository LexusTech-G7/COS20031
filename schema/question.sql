/* ── Question / Q&A ────────────────────────────────────── */
CREATE TABLE `Question` (
  questionID  INT PRIMARY KEY,
  postID      INT,
  questionText TEXT,
  isResolved  BOOLEAN DEFAULT FALSE,
  resolvedAt  TIMESTAMP NULL,
  answerID    INT,
  FOREIGN KEY (postID)   REFERENCES `Post`(postID)     ON DELETE CASCADE,
  FOREIGN KEY (answerID) REFERENCES `Comment`(commentID) ON DELETE SET NULL
);
