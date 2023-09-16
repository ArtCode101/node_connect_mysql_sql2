CREATE TABLE `item` (
  `id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT (now())
);
