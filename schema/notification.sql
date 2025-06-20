/* ── Notification ──────────────────────────────────────── */
CREATE TABLE `Notification` (
  notificationID   INT PRIMARY KEY,
  userID           INT,
  notificationText VARCHAR(255),
  isRead           BOOLEAN DEFAULT FALSE,
  createdAt        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (userID) REFERENCES `User`(userID) ON DELETE CASCADE
);
