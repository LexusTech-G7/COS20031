/* ── Like / Reaction ───────────────────────────────────── */
CREATE TABLE `Like` (
  likeID     INT PRIMARY KEY,
  userID     INT,
  targetType ENUM('post','comment') NOT NULL,
  targetID   INT NOT NULL,
  createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (userID) REFERENCES `User`(userID) ON DELETE CASCADE,
  INDEX idx_like_target (targetType, targetID)
);
