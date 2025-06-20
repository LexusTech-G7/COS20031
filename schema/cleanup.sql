/* Drop every table in the correct order, disabling FK checks */
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS
  Notification, `Like`, Attachment, PostTag, Tag,
  Question, Poll, Comment, Post, Community, `User`;
SET FOREIGN_KEY_CHECKS = 1;
