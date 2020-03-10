CREATE TABLE IF NOT EXISTS `articles`
  (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_by` datetime DEFAULT current_timestamp(),
    `updated_by` datetime NOT NULL,
     PRIMARY KEY (`id`)
  )
engine=innodb,
auto_increment=1
DEFAULT charset=utf8mb4;

CREATE TABLE IF NOT EXISTS `clickstream`
  (
    userId   int(11) unsigned                       NOT NULL,
    time     datetime                               NOT NULL,
    action   enum ('FIRST_INSTALL', 'LIKE_ARTICLE') NOT NULL,
    objectId int(11) unsigned                       DEFAULT NULL
  )
engine=innodb,
DEFAULT charset=utf8mb4;
