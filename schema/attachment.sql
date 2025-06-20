/* ── Attachment ────────────────────────────────────────── */
CREATE TABLE `Attachment` (
  attachmentID INT PRIMARY KEY,
  postID       INT,
  name         VARCHAR(255),
  type         VARCHAR(100),
  url          VARCHAR(255),
  uploadBy     INT,
  uploadAt     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (postID)   REFERENCES `Post`(postID) ON DELETE CASCADE,
  FOREIGN KEY (uploadBy) REFERENCES `User`(userID) ON DELETE SET NULL
);
