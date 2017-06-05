# Dump of table healthcheck
# ------------------------------------------------------------

DROP TABLE IF EXISTS `healthcheck`;

CREATE TABLE `healthcheck` (
  `status` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `healthcheck` WRITE;
/*!40000 ALTER TABLE `healthcheck` DISABLE KEYS */;

INSERT INTO `healthcheck` (`status`)
VALUES
  ('ok');

/*!40000 ALTER TABLE `healthcheck` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_auth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_auth`;

CREATE TABLE `page_auth` (
  `page_id` char(16) NOT NULL DEFAULT '',
  `user_id` char(140) NOT NULL DEFAULT '',
  `page_POST` tinyint(1) DEFAULT '0',
  `page_PUT` tinyint(1) DEFAULT '0',
  `page_GET` tinyint(1) DEFAULT '1',
  `page_DELETE` tinyint(1) DEFAULT '0',
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`page_id`,`user_id`),
  KEY `page_POST` (`page_POST`),
  KEY `page_PUT` (`page_PUT`),
  KEY `page_GET` (`page_GET`),
  KEY `page_DELETE` (`page_DELETE`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_auth` WRITE;
/*!40000 ALTER TABLE `page_auth` DISABLE KEYS */;

INSERT INTO `page_auth` (`page_id`, `user_id`, `page_POST`, `page_PUT`, `page_GET`, `page_DELETE`, `disabled`)
VALUES
  ('CA_2MLJEe0YuQrLt','US_1234567890123',1,1,1,1,0),
  ('QU_oec7Hlff7nfVW','US_1234567890123',1,1,1,1,0),
  ('RR_1234567890123','US_1234567890123',1,1,1,1,0),
  ('SA_rBGQ4fh7hkXvd','US_1234567890123',1,1,1,1,0),
  ('SA_ZnDpXGyqslbok','US_1234567890123',1,1,1,1,0);

/*!40000 ALTER TABLE `page_auth` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_content`;

CREATE TABLE `page_content` (
  `page_id` char(16) NOT NULL DEFAULT '',
  `type` varchar(140) NOT NULL DEFAULT '',
  `properties` varchar(5000) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`page_id`,`type`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_content` WRITE;
/*!40000 ALTER TABLE `page_content` DISABLE KEYS */;

INSERT INTO `page_content` (`page_id`, `type`, `properties`, `disabled`)
VALUES
  ('CA_2MLJEe0YuQrLt','DE',NULL,1),
  ('CA_2MLJEe0YuQrLt','IM',NULL,1),
  ('QU_oec7Hlff7nfVW','DE',NULL,1),
  ('QU_oec7Hlff7nfVW','IM',NULL,1),
  ('RR_1234567890123','DE','',1),
  ('RR_1234567890123','IM','',1),
  ('SA_rBGQ4fh7hkXvd','DE',NULL,0),
  ('SA_rBGQ4fh7hkXvd','IM',NULL,0),
  ('SA_ZnDpXGyqslbok','DE',NULL,0),
  ('SA_ZnDpXGyqslbok','IM',NULL,0);

/*!40000 ALTER TABLE `page_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_defaults
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_defaults`;

CREATE TABLE `page_defaults` (
  `type` char(2) NOT NULL DEFAULT '',
  `default_config` text,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_defaults` WRITE;
/*!40000 ALTER TABLE `page_defaults` DISABLE KEYS */;

INSERT INTO `page_defaults` (`type`, `default_config`)
VALUES
  ('CA','{\n  \"page_type\": \"CA\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": true\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"QU\"\n    }\n  ]\n}\n'),
  ('QU','{\n  \"page_type\": \"QU\",\n  \"summary\": {\n    \"properties\": {\n      \"provider\": \"\"\n    }\n  },\n  \"details\": {\n    \"hidden\": true\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"SA\"\n    }\n  ]\n}'),
  ('RR','{\n  \"page_type\": \"RR\",\n  \"summary\": {\n    \"hidden\": true,\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": true\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"CA\"\n    }\n  ]\n}'),
  ('SA','{\n  \"page_type\": \"QU\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"LO\"\n    },\n    {\n      \"type\": \"CH\"\n    },\n    {\n      \"type\": \"EN\"\n    }\n  ]\n}');

/*!40000 ALTER TABLE `page_defaults` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_details`;

CREATE TABLE `page_details` (
  `detail_id` char(16) NOT NULL DEFAULT '',
  `name` varchar(140) DEFAULT '',
  `content_mark_down` mediumtext,
  `content_partitions` mediumtext,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_details` WRITE;
/*!40000 ALTER TABLE `page_details` DISABLE KEYS */;

INSERT INTO `page_details` (`detail_id`, `name`, `content_mark_down`, `content_partitions`)
VALUES
  ('DE_CkjDZDxrGjIdJ','Traveling through the market','While traveling through the crowd, you are greeted by several merchants, declaring their wares and cheerfully encouraging the crowd to approach.  One stall stands out at the edge of the market, a wagon draped in colorful torn flags, rags, and cloths with a sign above the door, reading {\"Lady Negosha\'s Fortune and Folly\"}(TG_1112223334445).  As you approach, an old bent-over lady beckons you inside, \"Come: let me tell you of your fate.\"','[{\"type\":\"text\",\"text\":\"While traveling through the crowd, you are greeted by several merchants, declaring their wares and cheerfully encouraging the crowd to approach.  One stall stands out at the edge of the market, a wagon draped in colorful torn flags, rags, and cloths with a sign above the door, reading \"},{\"type\":\"tag\",\"text\":\"\\"Lady Negosha\'s Fortune and Folly\\"\",\"id\":\"TG_1112223334445\",\"tag\":{\"id\":\"SA_ZnDpXGyqslbok\"}},{\"type\":\"text\",\"text\":\".  As you approach, an old bent-over lady beckons you inside, \\"Come: let me tell you of your fate.\\"\"}]'),
  ('DE_YMmHPX9cYlZLc','Read first','You\'ve been invited to participate in Lord Tayspire\'s festival at Fellpines!  Rumor has spread that the wealthy Lord is sinking a small fortune into the party and any and all are invited to attend.  Although you are keen to start your adventuring, you decide to take this opportunity to rest and enjoy the festivities.  You may even be able to find some exotic equipment or seek out a traveling noble or merchant in need of some mercenary work.Upon entering the town of Fellpines, a small and presumably typically quite town now filled with hustle, laughter, and foreign travelers.  Merchants with caravans and small unfolded shops are bunched together against the street\'s edge, and a crowd of people all crammed together wander with the flow of troubled water from one stall to the next.','[{\"type\":\"text\",\"text\":\"You\'ve been invited to participate in Lord Tayspire\'s festival at Fellpines!  Rumor has spread that the wealthy Lord is sinking a small fortune into the party and any and all are invited to attend.  Although you are keen to start your adventuring, you decide to take this opportunity to rest and enjoy the festivities.  You may even be able to find some exotic equipment or seek out a traveling noble or merchant in need of some mercenary work.Upon entering the town of Fellpines, a small and presumably typically quite town now filled with hustle, laughter, and foreign travelers.  Merchants with caravans and small unfolded shops are bunched together against the street\'s edge, and a crowd of people all crammed together wander with the flow of troubled water from one stall to the next.\"}]');

/*!40000 ALTER TABLE `page_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_home
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_home`;

CREATE TABLE `page_home` (
  `user_id` char(140) NOT NULL,
  `page_id` char(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_home` WRITE;
/*!40000 ALTER TABLE `page_home` DISABLE KEYS */;

INSERT INTO `page_home` (`user_id`, `page_id`)
VALUES
  ('US_1234567890123','RR_1234567890123');

/*!40000 ALTER TABLE `page_home` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_id_bind
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_id_bind`;

CREATE TABLE `page_id_bind` (
  `page_id` char(16) NOT NULL DEFAULT '',
  `bound_id` char(16) NOT NULL DEFAULT '',
  `type` varchar(140) NOT NULL DEFAULT '',
  `order` int(1) DEFAULT '0',
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`page_id`,`bound_id`),
  KEY `order` (`order`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_id_bind` WRITE;
/*!40000 ALTER TABLE `page_id_bind` DISABLE KEYS */;

INSERT INTO `page_id_bind` (`page_id`, `bound_id`, `type`, `order`, `disabled`)
VALUES
  ('CA_2MLJEe0YuQrLt','QU_oec7Hlff7nfVW','QU',0,0),
  ('QU_oec7Hlff7nfVW','SA_rBGQ4fh7hkXvd','SA',0,0),
  ('QU_oec7Hlff7nfVW','SA_ZnDpXGyqslbok','SA',1,0),
  ('RR_1234567890123','CA_2MLJEe0YuQrLt','CA',0,0),
  ('SA_rBGQ4fh7hkXvd','DE_CkjDZDxrGjIdJ','DE',0,0),
  ('SA_rBGQ4fh7hkXvd','DE_YMmHPX9cYlZLc','DE',1,0),
  ('SA_rBGQ4fh7hkXvd','IM_uSa6Ym7zT0Zpu','IM',0,0);

/*!40000 ALTER TABLE `page_id_bind` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_images`;

CREATE TABLE `page_images` (
  `image_id` char(16) NOT NULL DEFAULT '',
  `name` varchar(140) DEFAULT '',
  `caption` varchar(300) DEFAULT '',
  `link` varchar(2500) DEFAULT '',
  `thumbnail_link` varchar(2500) DEFAULT NULL,
  `source` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_images` WRITE;
/*!40000 ALTER TABLE `page_images` DISABLE KEYS */;

INSERT INTO `page_images` (`image_id`, `name`, `caption`, `link`, `thumbnail_link`, `source`)
VALUES
  ('IM_uSa6Ym7zT0Zpu','The marketplace','The market is filled with sounds, and sights, and smells.  A sweet aroma of fresh pears lingers in the air, but it is pressed against a sensory overload of a street filled with exotic food, wares, and people.','DrY8owsZ9L6OQy6G.jpg','IQEwcbzXdxXcmbWr.jpg','http://freeforcommercialuse.net/portfolio/fresh-bio-crop-pear/');

/*!40000 ALTER TABLE `page_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_links`;

CREATE TABLE `page_links` (
  `page_id` char(16) NOT NULL DEFAULT '',
  `type` varchar(140) NOT NULL DEFAULT '',
  `properties` varchar(5000) DEFAULT '',
  `order_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`page_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_links` WRITE;
/*!40000 ALTER TABLE `page_links` DISABLE KEYS */;

INSERT INTO `page_links` (`page_id`, `type`, `properties`, `order_index`)
VALUES
  ('CA_2MLJEe0YuQrLt','QU',NULL,0),
  ('QU_oec7Hlff7nfVW','SA',NULL,0),
  ('RR_1234567890123','CA',NULL,0),
  ('SA_rBGQ4fh7hkXvd','CH',NULL,1),
  ('SA_rBGQ4fh7hkXvd','EN',NULL,2),
  ('SA_rBGQ4fh7hkXvd','LO',NULL,0),
  ('SA_ZnDpXGyqslbok','CH',NULL,1),
  ('SA_ZnDpXGyqslbok','EN',NULL,2),
  ('SA_ZnDpXGyqslbok','LO',NULL,0);

/*!40000 ALTER TABLE `page_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_specials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_specials`;

CREATE TABLE `page_specials` (
  `page_id` char(16) NOT NULL DEFAULT '',
  `type` varchar(140) NOT NULL DEFAULT '',
  `properties` varchar(5000) DEFAULT '',
  `order_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`page_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table page_summary
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_summary`;

CREATE TABLE `page_summary` (
  `page_id` char(16) NOT NULL DEFAULT '',
  `type` char(2) DEFAULT NULL,
  `name` varchar(140) DEFAULT NULL,
  `text` varchar(300) DEFAULT '',
  `properties` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page_summary` WRITE;
/*!40000 ALTER TABLE `page_summary` DISABLE KEYS */;

INSERT INTO `page_summary` (`page_id`, `type`, `name`, `text`, `properties`)
VALUES
  ('CA_2MLJEe0YuQrLt','CA','Prophecy of the bloodmoon god','Traveling to a festival, your party\'s destiny is sealed by the prophecy of a fortune teller.  She speaks of a blood stone, four maidens, and a ritual of death and immortality.  Can you stop the red demon before he becomes the bloodmoon god?','[{\"key\":\"Length\",\"value\":\"6-10 3-hour sessions\"},{\"key\":\"Starting level\",\"value\":\"1\"},{\"key\":\"Expected ending level\",\"value\":\"4\"},{\"key\":\"Expected number of players\",\"value\":\"3-6\"}]'),
  ('QU_oec7Hlff7nfVW','QU','Starting point','Your adventure should begin with this quest.  Start with the story-arc: Introduction.','[]'),
  ('SA_rBGQ4fh7hkXvd','SA','Introduction','This is where you should start the campaign.  Read through the details for more information.','[]'),
  ('SA_ZnDpXGyqslbok','SA','Lady Negosha\'s fortune',NULL,NULL);

/*!40000 ALTER TABLE `page_summary` ENABLE KEYS */;
UNLOCK TABLES;
