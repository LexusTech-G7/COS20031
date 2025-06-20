/* ── Post-Tag junction ─────────────────────────────────── */
CREATE TABLE `PostTag` (
  postID INT,
  tagID  INT,
  PRIMARY KEY (postID, tagID),
  FOREIGN KEY (postID) REFERENCES `Post`(postID) ON DELETE CASCADE,
  FOREIGN KEY (tagID)  REFERENCES `Tag`(tagID)  ON DELETE CASCADE
);
