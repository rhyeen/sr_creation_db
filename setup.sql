# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: sr_creation_dev
# Generation Time: 2017-08-13 04:17:27 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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


# Dump of table map_highlighted_pin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `map_highlighted_pin`;

CREATE TABLE `map_highlighted_pin` (
  `map_id` char(16) NOT NULL,
  `pin_id` char(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table map_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `map_images`;

CREATE TABLE `map_images` (
  `image_id` char(16) NOT NULL,
  `name` varchar(140) DEFAULT NULL,
  `caption` varchar(300) DEFAULT NULL,
  `link` varchar(2500) DEFAULT NULL,
  `thumbnail_link` varchar(2500) DEFAULT NULL,
  `source` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table map_pins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `map_pins`;

CREATE TABLE `map_pins` (
  `pin_id` char(16) NOT NULL DEFAULT '',
  `map_id` char(16) NOT NULL,
  `page_id` char(16) NOT NULL,
  `title` varchar(140) DEFAULT '',
  `tooltip` varchar(300) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `coordinates_x` int(11) DEFAULT NULL,
  `coordinates_y` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin_id`),
  KEY `map_id` (`map_id`),
  KEY `title` (`title`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table page_maps
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_maps`;

CREATE TABLE `page_maps` (
  `map_id` char(16) NOT NULL DEFAULT '',
  `name` varchar(140) DEFAULT '',
  `properties` varchar(5000) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`map_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
  ('AS_oHXxgJw5tv7Ce','US_1234567890123',1,1,1,1,0),
  ('CA_2MLJEe0YuQrLt','US_1234567890123',1,1,1,1,0),
  ('CH_Rr4So7SlAXSWm','US_1234567890123',1,1,1,1,0),
  ('DI_FOTZYQnlJYk7a','US_1234567890123',1,1,1,1,0),
  ('EA_sKR7yxcVOrKw9','US_1234567890123',1,1,1,1,0),
  ('GR_XvIixhu8sHoTc','US_1234567890123',1,1,1,1,0),
  ('IT_EYFMYY3gPgkSI','US_1234567890123',1,1,1,1,0),
  ('LM_1m8oSmsEe67gc','US_1234567890123',1,1,1,1,0),
  ('LM_DcFCWmQs3IUKG','US_1234567890123',1,1,1,1,0),
  ('LM_hnNqV1pP6fNVe','US_1234567890123',1,1,1,1,0),
  ('LM_tOoMUA1HsFqfJ','US_1234567890123',1,1,1,1,0),
  ('PL_DmUcXuKJYL0iv','US_1234567890123',1,1,1,1,0),
  ('PL_nLIRlYzyUwgoK','US_1234567890123',1,1,1,1,0),
  ('QU_oec7Hlff7nfVW','US_1234567890123',1,1,1,1,0),
  ('RA_1pSMGlktvovHL','US_1234567890123',1,1,1,1,0),
  ('RA_53tmPY6F55P0z','US_1234567890123',1,1,1,1,0),
  ('RA_afaBbxIA91CXO','US_1234567890123',1,1,1,1,0),
  ('RA_cbECdPIKDaD3d','US_1234567890123',1,1,1,1,0),
  ('RA_CFP5Aud1sJ3I0','US_1234567890123',1,1,1,1,0),
  ('RA_czbTv5SwJC49W','US_1234567890123',1,1,1,1,0),
  ('RA_driIEa5MTQLnO','US_1234567890123',1,1,1,1,0),
  ('RA_e7qoKvjbPLnTK','US_1234567890123',1,1,1,1,0),
  ('RA_HKVAhd2lDGPmv','US_1234567890123',1,1,1,1,0),
  ('RA_iEJHX5cZCzh13','US_1234567890123',1,1,1,1,0),
  ('RA_KzHFz5vcFliIw','US_1234567890123',1,1,1,1,0),
  ('RA_MNNMA5YbwQkjw','US_1234567890123',1,1,1,1,0),
  ('RA_NFK7eJJHm4xzi','US_1234567890123',1,1,1,1,0),
  ('RA_pNj1MxpKSRg9Q','US_1234567890123',1,1,1,1,0),
  ('RA_xBgmBkN6EpiT8','US_1234567890123',1,1,1,1,0),
  ('RA_xMgKSSMRf29sz','US_1234567890123',1,1,1,1,0),
  ('RG_sxEJUtzFuhYPP','US_1234567890123',1,1,1,1,0),
  ('RR_1234567890123','US_1234567890123',1,1,1,1,0),
  ('SA_rBGQ4fh7hkXvd','US_1234567890123',1,1,1,1,0),
  ('SA_ZnDpXGyqslbok','US_1234567890123',1,1,1,1,0),
  ('SP_hrjiECJmR7rwV','US_1234567890123',1,1,1,1,0),
  ('ST_1zFVNLfc2SQz5','US_1234567890123',1,1,1,1,0),
  ('TX_O7iDhPul9gPMH','US_1234567890123',1,1,1,1,0),
  ('WD_dGdvX9cjgJtd8','US_1234567890123',1,1,1,1,0);

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
  ('AS_oHXxgJw5tv7Ce','DE',NULL,0),
  ('AS_oHXxgJw5tv7Ce','IM',NULL,0),
  ('CA_2MLJEe0YuQrLt','DE',NULL,0),
  ('CA_2MLJEe0YuQrLt','IM',NULL,0),
  ('CH_Rr4So7SlAXSWm','DE',NULL,0),
  ('CH_Rr4So7SlAXSWm','IM',NULL,0),
  ('DI_FOTZYQnlJYk7a','DE',NULL,0),
  ('DI_FOTZYQnlJYk7a','IM',NULL,0),
  ('DI_FOTZYQnlJYk7a','MP',NULL,0),
  ('EA_sKR7yxcVOrKw9','DE',NULL,0),
  ('EA_sKR7yxcVOrKw9','IM',NULL,0),
  ('GR_XvIixhu8sHoTc','DE',NULL,0),
  ('GR_XvIixhu8sHoTc','IM',NULL,0),
  ('IT_EYFMYY3gPgkSI','DE',NULL,0),
  ('IT_EYFMYY3gPgkSI','IM',NULL,0),
  ('LM_1m8oSmsEe67gc','DE',NULL,0),
  ('LM_1m8oSmsEe67gc','IM',NULL,0),
  ('LM_1m8oSmsEe67gc','MP',NULL,0),
  ('LM_DcFCWmQs3IUKG','DE',NULL,0),
  ('LM_DcFCWmQs3IUKG','IM',NULL,0),
  ('LM_DcFCWmQs3IUKG','MP',NULL,0),
  ('LM_hnNqV1pP6fNVe','DE',NULL,0),
  ('LM_hnNqV1pP6fNVe','IM',NULL,0),
  ('LM_hnNqV1pP6fNVe','MP',NULL,0),
  ('LM_tOoMUA1HsFqfJ','DE',NULL,0),
  ('LM_tOoMUA1HsFqfJ','IM',NULL,0),
  ('LM_tOoMUA1HsFqfJ','MP',NULL,0),
  ('PL_DmUcXuKJYL0iv','DE',NULL,0),
  ('PL_DmUcXuKJYL0iv','IM',NULL,0),
  ('PL_DmUcXuKJYL0iv','MP',NULL,0),
  ('PL_nLIRlYzyUwgoK','DE',NULL,0),
  ('PL_nLIRlYzyUwgoK','IM',NULL,0),
  ('PL_nLIRlYzyUwgoK','MP',NULL,0),
  ('QU_oec7Hlff7nfVW','DE',NULL,0),
  ('QU_oec7Hlff7nfVW','IM',NULL,0),
  ('RA_1pSMGlktvovHL','DE',NULL,0),
  ('RA_1pSMGlktvovHL','IM',NULL,0),
  ('RA_53tmPY6F55P0z','DE',NULL,0),
  ('RA_53tmPY6F55P0z','IM',NULL,0),
  ('RA_afaBbxIA91CXO','DE',NULL,0),
  ('RA_afaBbxIA91CXO','IM',NULL,0),
  ('RA_cbECdPIKDaD3d','DE',NULL,0),
  ('RA_cbECdPIKDaD3d','IM',NULL,0),
  ('RA_CFP5Aud1sJ3I0','DE',NULL,0),
  ('RA_CFP5Aud1sJ3I0','IM',NULL,0),
  ('RA_czbTv5SwJC49W','DE',NULL,0),
  ('RA_czbTv5SwJC49W','IM',NULL,0),
  ('RA_driIEa5MTQLnO','DE',NULL,0),
  ('RA_driIEa5MTQLnO','IM',NULL,0),
  ('RA_e7qoKvjbPLnTK','DE',NULL,0),
  ('RA_e7qoKvjbPLnTK','IM',NULL,0),
  ('RA_HKVAhd2lDGPmv','DE',NULL,0),
  ('RA_HKVAhd2lDGPmv','IM',NULL,0),
  ('RA_iEJHX5cZCzh13','DE',NULL,0),
  ('RA_iEJHX5cZCzh13','IM',NULL,0),
  ('RA_KzHFz5vcFliIw','DE',NULL,0),
  ('RA_KzHFz5vcFliIw','IM',NULL,0),
  ('RA_MNNMA5YbwQkjw','DE',NULL,0),
  ('RA_MNNMA5YbwQkjw','IM',NULL,0),
  ('RA_NFK7eJJHm4xzi','DE',NULL,0),
  ('RA_NFK7eJJHm4xzi','IM',NULL,0),
  ('RA_pNj1MxpKSRg9Q','DE',NULL,0),
  ('RA_pNj1MxpKSRg9Q','IM',NULL,0),
  ('RA_xBgmBkN6EpiT8','DE',NULL,0),
  ('RA_xBgmBkN6EpiT8','IM',NULL,0),
  ('RA_xMgKSSMRf29sz','DE',NULL,0),
  ('RA_xMgKSSMRf29sz','IM',NULL,0),
  ('RG_sxEJUtzFuhYPP','DE',NULL,0),
  ('RG_sxEJUtzFuhYPP','IM',NULL,0),
  ('RG_sxEJUtzFuhYPP','MP',NULL,0),
  ('RR_1234567890123','DE',NULL,0),
  ('RR_1234567890123','IM',NULL,0),
  ('SA_rBGQ4fh7hkXvd','DE',NULL,0),
  ('SA_rBGQ4fh7hkXvd','IM',NULL,0),
  ('SA_ZnDpXGyqslbok','DE',NULL,0),
  ('SA_ZnDpXGyqslbok','IM',NULL,0),
  ('SP_hrjiECJmR7rwV','DE',NULL,0),
  ('SP_hrjiECJmR7rwV','IM',NULL,0),
  ('ST_1zFVNLfc2SQz5','DE',NULL,0),
  ('ST_1zFVNLfc2SQz5','IM',NULL,0),
  ('TX_O7iDhPul9gPMH','DE',NULL,0),
  ('TX_O7iDhPul9gPMH','IM',NULL,0),
  ('WD_dGdvX9cjgJtd8','DE',NULL,0),
  ('WD_dGdvX9cjgJtd8','IM',NULL,0),
  ('WD_dGdvX9cjgJtd8','MP',NULL,0);

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
  ('AS','{\n  \"page_name\": \"association\",\n  \"page_type\": \"AS\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"CH\"\n    }\n  ]\n}'),
  ('CA','{\n  \"page_name\": \"campaign\",\n  \"page_type\": \"CA\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"QU\"\n    },\n    {\n      \"type\": \"GR\"\n    },\n    {\n      \"type\": \"EA\"\n    },\n    {\n      \"type\": \"WD\"\n    },\n    {\n      \"type\": \"TX\"\n    },\n    {\n      \"type\": \"ST\"\n    }\n  ]\n}\n'),
  ('CH','{\n  \"page_name\": \"character\",\n  \"page_type\": \"CH\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"IT\"\n    },\n    {\n      \"type\": \"AS\"\n    },\n    {\n      \"type\": \"EV\"\n    },\n    {\n      \"type\": \"LM\"\n    },\n    {\n      \"type\": \"SA\"\n    },\n    {\n      \"type\": \"RP\"\n    }\n  ]\n}'),
  ('DI','{\n  \"page_name\": \"district\",\n  \"page_type\": \"DI\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"maps\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"PL\"\n    }\n  ]\n}'),
  ('EA','{\n  \"page_name\": \"era\",\n  \"page_type\": \"EA\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"HI\"\n    }\n  ]\n}'),
  ('EV','{\n  \"page_name\": \"event\",\n  \"page_type\": \"EV\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"SA\"\n    },\n    {\n      \"type\": \"CH\"\n    },\n    {\n      \"type\": \"IT\"\n    },\n    {\n      \"type\": \"RP\"\n    }\n  ]\n}'),
  ('GR','{\n  \"page_name\": \"group\",\n  \"page_type\": \"GR\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"AS\"\n    }\n  ]\n}'),
  ('HI','{\n  \"page_name\": \"history\",\n  \"page_type\": \"HI\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"EV\"\n    }\n  ]\n}'),
  ('IT','{\n  \"page_name\": \"item\",\n  \"page_type\": \"IT\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"CA\"\n    },\n    {\n      \"type\": \"EV\"\n    },\n    {\n      \"type\": \"RP\"\n    }\n  ]\n}'),
  ('LM','{\n  \"page_name\": \"landmark\",\n  \"page_type\": \"LM\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"maps\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"SE\"\n    }\n  ]\n}'),
  ('LR','{\n  \"page_name\": \"lore\",\n  \"page_type\": \"LR\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"RP\"\n    }\n  ]\n}'),
  ('PL','{\n  \"page_name\": \"place\",\n  \"page_type\": \"PL\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"maps\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"LM\"\n    }\n  ]\n}\n'),
  ('QU','{\n  \"page_name\": \"quest\",\n  \"page_type\": \"QU\",\n  \"summary\": {\n    \"properties\": {\n      \"provider\": \"\"\n    }\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"SA\"\n    }\n  ]\n}'),
  ('RA','{\n  \"page_name\": \"race\",\n  \"page_type\": \"RA\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"CH\"\n    },\n    {\n      \"type\": \"HI\"\n    },\n    {\n      \"type\": \"LR\"\n    }\n  ]\n}\n'),
  ('RG','{\n  \"page_name\": \"region\",\n  \"page_type\": \"RG\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"maps\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"DI\"\n    }\n  ]\n}\n'),
  ('RP','{\n  \"page_name\": \"report\",\n  \"page_type\": \"RP\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"CA\"\n    },\n    {\n      \"type\": \"IT\"\n    }\n  ]\n}\n'),
  ('RR','{\n  \"page_name\": \"root\",\n  \"page_type\": \"RR\",\n  \"summary\": {\n    \"hidden\": true,\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": true\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"CA\"\n    }\n  ]\n}'),
  ('SA','{\n  \"page_name\": \"story arc\",\n  \"page_type\": \"SA\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"PL\"\n    },\n    {\n      \"type\": \"RP\"\n    },\n    {\n      \"type\": \"CH\"\n    }\n  ]\n}'),
  ('SE','{\n  \"page_name\": \"section\",\n  \"page_type\": \"SE\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"CA\"\n    },\n    {\n      \"type\": \"IT\"\n    }\n  ]\n}\n'),
  ('SP','{\n  \"page_name\": \"species\",\n  \"page_type\": \"SP\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"RA\"\n    },\n    {\n      \"type\": \"CH\"\n    }\n  ]\n}\n'),
  ('ST','{\n  \"page_name\": \"sets\",\n  \"page_type\": \"ST\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"IT\"\n    }\n  ]\n}'),
  ('TX','{\n  \"page_name\": \"taxon\",\n  \"page_type\": \"TX\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"SP\"\n    }\n  ]\n}\n'),
  ('WD','{\n  \"page_name\": \"world\",\n  \"page_type\": \"WD\",\n  \"summary\": {\n    \"properties\": {}\n  },\n  \"details\": {\n    \"hidden\": false\n  },\n  \"images\": {\n    \"hidden\": true\n  },\n  \"maps\": {\n    \"hidden\": false\n  },\n  \"specials\": [],\n  \"pages\": [\n    {\n      \"type\": \"RG\"\n    }\n  ]\n}\n');

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
  ('DE_CkjDZDxrGjIdJ','Traveling through the market','While traveling through the crowd, you are greeted by several merchants, declaring their wares and cheerfully encouraging the crowd to approach.  One stall stands out at the edge of the market, a wagon draped in colorful torn flags, rags, and cloths with a sign above the door, reading {\"Lady Negosha\'s Fortune and Folly\"}(TG_1112223334445).  As you approach, an old bent-over lady beckons you inside, \"Come: let me tell you of your fate.\"','[{\"type\":\"text\",\"text\":\"While traveling through the crowd, you are greeted by several merchants, declaring their wares and cheerfully encouraging the crowd to approach.  One stall stands out at the edge of the market, a wagon draped in colorful torn flags, rags, and cloths with a sign above the door, reading \"},{\"type\":\"tag\",\"text\":\"\\\"Lady Negosha\'s Fortune and Folly\\\"\",\"id\":\"TG_1112223334445\",\"tag\":{\"id\":\"SA_ZnDpXGyqslbok\"}},{\"type\":\"text\",\"text\":\".  As you approach, an old bent-over lady beckons you inside, \\\"Come: let me tell you of your fate.\\\"\"}]'),
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
  ('AS_oHXxgJw5tv7Ce','CH_Rr4So7SlAXSWm','CH',NULL,0),
  ('CA_2MLJEe0YuQrLt','ST_1zFVNLfc2SQz5','ST',NULL,0),
  ('CA_2MLJEe0YuQrLt','EA_sKR7yxcVOrKw9','EA',NULL,0),
  ('CA_2MLJEe0YuQrLt','GR_XvIixhu8sHoTc','GR',NULL,0),
  ('CA_2MLJEe0YuQrLt','QU_oec7Hlff7nfVW','QU',0,0),
  ('CA_2MLJEe0YuQrLt','TX_O7iDhPul9gPMH','TX',NULL,0),
  ('CA_2MLJEe0YuQrLt','WD_dGdvX9cjgJtd8','WD',0,0),
  ('CH_Rr4So7SlAXSWm','AS_oHXxgJw5tv7Ce','AS',0,0),
  ('CH_Rr4So7SlAXSWm','SA_ZnDpXGyqslbok','SA',0,0),
  ('DI_FOTZYQnlJYk7a','PL_DmUcXuKJYL0iv','PL',0,0),
  ('DI_FOTZYQnlJYk7a','PL_nLIRlYzyUwgoK','PL',0,0),
  ('GR_XvIixhu8sHoTc','AS_oHXxgJw5tv7Ce','AS',NULL,0),
  ('PL_nLIRlYzyUwgoK','LM_1m8oSmsEe67gc','LM',0,0),
  ('PL_nLIRlYzyUwgoK','LM_DcFCWmQs3IUKG','LM',0,0),
  ('PL_nLIRlYzyUwgoK','LM_hnNqV1pP6fNVe','LM',0,0),
  ('PL_nLIRlYzyUwgoK','LM_tOoMUA1HsFqfJ','LM',0,0),
  ('QU_oec7Hlff7nfVW','SA_rBGQ4fh7hkXvd','SA',0,0),
  ('QU_oec7Hlff7nfVW','SA_ZnDpXGyqslbok','SA',1,0),
  ('RG_sxEJUtzFuhYPP','DI_FOTZYQnlJYk7a','DI',0,0),
  ('RR_1234567890123','CA_2MLJEe0YuQrLt','CA',0,0),
  ('SA_rBGQ4fh7hkXvd','DE_CkjDZDxrGjIdJ','DE',0,0),
  ('SA_rBGQ4fh7hkXvd','DE_YMmHPX9cYlZLc','DE',1,0),
  ('SA_rBGQ4fh7hkXvd','IM_uSa6Ym7zT0Zpu','IM',0,0),
  ('SA_ZnDpXGyqslbok','CH_Rr4So7SlAXSWm','CH',0,0),
  ('SA_ZnDpXGyqslbok','PL_nLIRlYzyUwgoK','PL',0,0),
  ('SA_ZnDpXGyqslbok','PL_qDoFcMEuiQNKE','PL',NULL,1),
  ('SP_hrjiECJmR7rwV','RA_1pSMGlktvovHL','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_53tmPY6F55P0z','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_afaBbxIA91CXO','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_cbECdPIKDaD3d','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_CFP5Aud1sJ3I0','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_czbTv5SwJC49W','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_driIEa5MTQLnO','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_e7qoKvjbPLnTK','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_HKVAhd2lDGPmv','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_iEJHX5cZCzh13','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_KzHFz5vcFliIw','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_MNNMA5YbwQkjw','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_NFK7eJJHm4xzi','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_pNj1MxpKSRg9Q','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_xBgmBkN6EpiT8','RA',NULL,0),
  ('SP_hrjiECJmR7rwV','RA_xMgKSSMRf29sz','RA',NULL,0),
  ('ST_1zFVNLfc2SQz5','IT_EYFMYY3gPgkSI','IT',NULL,0),
  ('TX_O7iDhPul9gPMH','SP_hrjiECJmR7rwV','SP',NULL,0),
  ('WD_dGdvX9cjgJtd8','RG_sxEJUtzFuhYPP','RG',0,0);

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
  ('AS_oHXxgJw5tv7Ce','CH',NULL,0),
  ('CA_2MLJEe0YuQrLt','ST',NULL,5),
  ('CA_2MLJEe0YuQrLt','EA',NULL,3),
  ('CA_2MLJEe0YuQrLt','GR',NULL,2),
  ('CA_2MLJEe0YuQrLt','QU',NULL,0),
  ('CA_2MLJEe0YuQrLt','TX',NULL,4),
  ('CA_2MLJEe0YuQrLt','WD',NULL,1),
  ('CH_Rr4So7SlAXSWm','AS',NULL,1),
  ('CH_Rr4So7SlAXSWm','EV',NULL,2),
  ('CH_Rr4So7SlAXSWm','IT',NULL,0),
  ('CH_Rr4So7SlAXSWm','LM',NULL,3),
  ('CH_Rr4So7SlAXSWm','RP',NULL,5),
  ('CH_Rr4So7SlAXSWm','SA',NULL,4),
  ('DI_FOTZYQnlJYk7a','PL',NULL,0),
  ('EA_sKR7yxcVOrKw9','HI',NULL,0),
  ('GR_XvIixhu8sHoTc','AS',NULL,0),
  ('IT_EYFMYY3gPgkSI','CA',NULL,0),
  ('IT_EYFMYY3gPgkSI','EV',NULL,1),
  ('IT_EYFMYY3gPgkSI','RP',NULL,2),
  ('LM_1m8oSmsEe67gc','SE',NULL,0),
  ('LM_DcFCWmQs3IUKG','SE',NULL,0),
  ('LM_hnNqV1pP6fNVe','SE',NULL,0),
  ('LM_tOoMUA1HsFqfJ','SE',NULL,0),
  ('PL_DmUcXuKJYL0iv','LM',NULL,0),
  ('PL_nLIRlYzyUwgoK','LM',NULL,0),
  ('QU_oec7Hlff7nfVW','SA',NULL,0),
  ('RA_1pSMGlktvovHL','CH',NULL,0),
  ('RA_1pSMGlktvovHL','HI',NULL,1),
  ('RA_1pSMGlktvovHL','LR',NULL,2),
  ('RA_53tmPY6F55P0z','CH',NULL,0),
  ('RA_53tmPY6F55P0z','HI',NULL,1),
  ('RA_53tmPY6F55P0z','LR',NULL,2),
  ('RA_afaBbxIA91CXO','CH',NULL,0),
  ('RA_afaBbxIA91CXO','HI',NULL,1),
  ('RA_afaBbxIA91CXO','LR',NULL,2),
  ('RA_cbECdPIKDaD3d','CH',NULL,0),
  ('RA_cbECdPIKDaD3d','HI',NULL,1),
  ('RA_cbECdPIKDaD3d','LR',NULL,2),
  ('RA_CFP5Aud1sJ3I0','CH',NULL,0),
  ('RA_CFP5Aud1sJ3I0','HI',NULL,1),
  ('RA_CFP5Aud1sJ3I0','LR',NULL,2),
  ('RA_czbTv5SwJC49W','CH',NULL,0),
  ('RA_czbTv5SwJC49W','HI',NULL,1),
  ('RA_czbTv5SwJC49W','LR',NULL,2),
  ('RA_driIEa5MTQLnO','CH',NULL,0),
  ('RA_driIEa5MTQLnO','HI',NULL,1),
  ('RA_driIEa5MTQLnO','LR',NULL,2),
  ('RA_e7qoKvjbPLnTK','CH',NULL,0),
  ('RA_e7qoKvjbPLnTK','HI',NULL,1),
  ('RA_e7qoKvjbPLnTK','LR',NULL,2),
  ('RA_HKVAhd2lDGPmv','CH',NULL,0),
  ('RA_HKVAhd2lDGPmv','HI',NULL,1),
  ('RA_HKVAhd2lDGPmv','LR',NULL,2),
  ('RA_iEJHX5cZCzh13','CH',NULL,0),
  ('RA_iEJHX5cZCzh13','HI',NULL,1),
  ('RA_iEJHX5cZCzh13','LR',NULL,2),
  ('RA_KzHFz5vcFliIw','CH',NULL,0),
  ('RA_KzHFz5vcFliIw','HI',NULL,1),
  ('RA_KzHFz5vcFliIw','LR',NULL,2),
  ('RA_MNNMA5YbwQkjw','CH',NULL,0),
  ('RA_MNNMA5YbwQkjw','HI',NULL,1),
  ('RA_MNNMA5YbwQkjw','LR',NULL,2),
  ('RA_NFK7eJJHm4xzi','CH',NULL,0),
  ('RA_NFK7eJJHm4xzi','HI',NULL,1),
  ('RA_NFK7eJJHm4xzi','LR',NULL,2),
  ('RA_pNj1MxpKSRg9Q','CH',NULL,0),
  ('RA_pNj1MxpKSRg9Q','HI',NULL,1),
  ('RA_pNj1MxpKSRg9Q','LR',NULL,2),
  ('RA_xBgmBkN6EpiT8','CH',NULL,0),
  ('RA_xBgmBkN6EpiT8','HI',NULL,1),
  ('RA_xBgmBkN6EpiT8','LR',NULL,2),
  ('RA_xMgKSSMRf29sz','CH',NULL,0),
  ('RA_xMgKSSMRf29sz','HI',NULL,1),
  ('RA_xMgKSSMRf29sz','LR',NULL,2),
  ('RG_sxEJUtzFuhYPP','DI',NULL,0),
  ('RR_1234567890123','CA',NULL,0),
  ('SA_rBGQ4fh7hkXvd','CH',NULL,1),
  ('SA_rBGQ4fh7hkXvd','PL',NULL,0),
  ('SA_rBGQ4fh7hkXvd','RP',NULL,2),
  ('SA_ZnDpXGyqslbok','CH',NULL,1),
  ('SA_ZnDpXGyqslbok','PL',NULL,0),
  ('SA_ZnDpXGyqslbok','RP',NULL,2),
  ('SP_hrjiECJmR7rwV','CH',NULL,1),
  ('SP_hrjiECJmR7rwV','RA',NULL,0),
  ('ST_1zFVNLfc2SQz5','IT',NULL,0),
  ('TX_O7iDhPul9gPMH','SP',NULL,0),
  ('WD_dGdvX9cjgJtd8','RG',NULL,0);

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
  ('AS_oHXxgJw5tv7Ce','AS','The Negoshas',NULL,NULL),
  ('CA_2MLJEe0YuQrLt','CA','Prophecy of the bloodmoon god','Traveling to a festival, your party\'s destiny is sealed by the prophecy of a fortune teller.  She speaks of a blood stone, four maidens, and a ritual of death and immortality.  Can you stop the red demon before he becomes the bloodmoon god?','[{\"key\":\"Length\",\"value\":\"6-10 3-hour sessions\"},{\"key\":\"Starting level\",\"value\":\"1\"},{\"key\":\"Expected ending level\",\"value\":\"4\"},{\"key\":\"Expected number of players\",\"value\":\"3-6\"}]'),
  ('CH_Rr4So7SlAXSWm','CH','Lady Sharon Negosha',NULL,NULL),
  ('ST_1zFVNLfc2SQz5','ST','Magical stones',NULL,NULL),
  ('DI_FOTZYQnlJYk7a','DI','Zelorna','A mostly terran kingdom that believes in a strong republic of patriarchal government.  Zelorna is in continual territorial conflict against the Sapphire Vein and the Empire of the Old Kings.','[{\"key\":\"Title\",\"value\":\"The Brotherhood under the Stag Banner\"}]'),
  ('EA_sKR7yxcVOrKw9','EA','Redawn','The current Era in which players usually begin their journey.','[]'),
  ('GR_XvIixhu8sHoTc','GR','Vistani',NULL,NULL),
  ('IT_EYFMYY3gPgkSI','IT','Bloodmoon stone',NULL,NULL),
  ('LM_1m8oSmsEe67gc','LM','Market circle',NULL,NULL),
  ('LM_DcFCWmQs3IUKG','LM','The Painted Grey Roadhouse',NULL,NULL),
  ('LM_hnNqV1pP6fNVe','LM','Lady Negosha’s Fortune and Folly',NULL,NULL),
  ('LM_tOoMUA1HsFqfJ','LM','Lord Tayspire’s estate',NULL,NULL),
  ('PL_DmUcXuKJYL0iv','PL','Westhaven','Capital city of Zelorna.','[]'),
  ('PL_nLIRlYzyUwgoK','PL','Fellpines',NULL,NULL),
  ('QU_oec7Hlff7nfVW','QU','Starting point','Your adventure should begin with this quest.  Start with the story-arc: Introduction.','[]'),
  ('RA_1pSMGlktvovHL','RA','Argonian',NULL,NULL),
  ('RA_53tmPY6F55P0z','RA','Fey Goblin',NULL,NULL),
  ('RA_afaBbxIA91CXO','RA','Mountain Dwarf',NULL,NULL),
  ('RA_cbECdPIKDaD3d','RA','Halfling',NULL,NULL),
  ('RA_CFP5Aud1sJ3I0','RA','Duergar',NULL,NULL),
  ('RA_czbTv5SwJC49W','RA','Tiefling',NULL,NULL),
  ('RA_driIEa5MTQLnO','RA','Nephilim',NULL,NULL),
  ('RA_e7qoKvjbPLnTK','RA','Terran','What we understand to be the human race.','[]'),
  ('RA_HKVAhd2lDGPmv','RA','Drow',NULL,NULL),
  ('RA_iEJHX5cZCzh13','RA','Free-orc',NULL,NULL),
  ('RA_KzHFz5vcFliIw','RA','Wood Elf',NULL,NULL),
  ('RA_MNNMA5YbwQkjw','RA','Gnome',NULL,NULL),
  ('RA_NFK7eJJHm4xzi','RA','Half-orc',NULL,NULL),
  ('RA_pNj1MxpKSRg9Q','RA','Merfolk',NULL,NULL),
  ('RA_xBgmBkN6EpiT8','RA','High Elf',NULL,NULL),
  ('RA_xMgKSSMRf29sz','RA','Hill Dwarf',NULL,NULL),
  ('RG_sxEJUtzFuhYPP','RG','Warring Kingdoms','The far north of Gyvth is the world\'s oldest cities, known as the Warring Kingdoms.  It is called such because the land is split into factions and kingdoms that continually fight for territory.  Although an all-out war has not been declared for over a hundred years, tensions are beginning to rise.','[]'),
  ('SA_rBGQ4fh7hkXvd','SA','Introduction','This is where you should start the campaign.  Read through the details for more information.','[]'),
  ('SA_ZnDpXGyqslbok','SA','Lady Negosha\'s fortune',NULL,NULL),
  ('SP_hrjiECJmR7rwV','SP','Humans','See Races for a list of playable races.','[]'),
  ('TX_O7iDhPul9gPMH','TX','Humanoids',NULL,NULL),
  ('WD_dGdvX9cjgJtd8','WD','Gyvth','The world in which players begin their adventure.  Its land mass is similar to that of the continental US.','[]');

/*!40000 ALTER TABLE `page_summary` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
