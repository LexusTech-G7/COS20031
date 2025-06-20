/* ── Comment ───────────────────────────────────────────── */
CREATE TABLE `Comment` (
  commentID   INT PRIMARY KEY,
  userID      INT,
  postID      INT,
  commentText TEXT,
  createdAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (userID) REFERENCES `User`(userID) ON DELETE SET NULL,
  FOREIGN KEY (postID) REFERENCES `Post`(postID) ON DELETE CASCADE
);
