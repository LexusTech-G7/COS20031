/* ── Post ──────────────────────────────────────────────── */
CREATE TABLE `Post` (
  postID      INT PRIMARY KEY,
  userID      INT,
  communityID INT,
  title       VARCHAR(255) NOT NULL,
  body        TEXT,
  createdAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updatedAt   TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  isPinned    BOOLEAN DEFAULT FALSE,
  viewCount   INT      DEFAULT 0,
  FOREIGN KEY (userID)      REFERENCES `User`(userID)       ON DELETE SET NULL,
  FOREIGN KEY (communityID) REFERENCES `Community`(communityID) ON DELETE CASCADE
);
