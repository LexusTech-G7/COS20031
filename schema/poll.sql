/* ── Poll (simple JSON options) ────────────────────────── */
CREATE TABLE `Poll` (
  pollID   INT PRIMARY KEY,
  postID   INT,
  title    VARCHAR(255),
  options  JSON,
  duration INT,
  FOREIGN KEY (postID) REFERENCES `Post`(postID) ON DELETE CASCADE
);
