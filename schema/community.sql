/* ── Community ─────────────────────────────────────────── */
CREATE TABLE `Community` (
  communityID INT PRIMARY KEY,
  name        VARCHAR(255) NOT NULL,
  description TEXT,
  createdBy   INT,
  createdAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  visibility  ENUM('public','private') DEFAULT 'public',
  FOREIGN KEY (createdBy) REFERENCES `User`(userID) ON DELETE SET NULL
);
