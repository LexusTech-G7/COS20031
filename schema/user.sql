/* ── User table ───────────────────────────────────────── */
CREATE TABLE `User` (
  userID     INT PRIMARY KEY,
  name       VARCHAR(255) NOT NULL,
  email      VARCHAR(255) NOT NULL UNIQUE,
  role       ENUM('FieldEngineer','HSESupervisor','OpsManager','HRAdmin','Admin') NOT NULL,
  department VARCHAR(100),
  avatarURL  VARCHAR(255),
  createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status     ENUM('active','inactive') DEFAULT 'active'
);
