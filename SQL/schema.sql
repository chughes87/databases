CREATE DATABASE chat;

USE chat;

/* You can also create more tables, if you need them... */

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql
 *  to create the database and the tables.*/




-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- 
-- ---

DROP TABLE IF EXISTS Messages;
    
CREATE TABLE Messages (
  msgId INT AUTO_INCREMENT,
  userId INT,
  roomName VARCHAR(25),
  text VARCHAR(255),
  timeStamp DATETIME,
  PRIMARY KEY (msgId)
);

-- ---
-- Table 'Users'
-- 
-- ---

DROP TABLE IF EXISTS Users;
    
CREATE TABLE Users (
  userId INT AUTO_INCREMENT,
  userName VARCHAR(25),
  roomName VARCHAR(25),
  PRIMARY KEY (userId)
);

-- ---
-- Table 'Rooms'
-- 
-- ---

DROP TABLE IF EXISTS Rooms;
    
CREATE TABLE Rooms (
  roomId INT,
  roomName VARCHAR(25),
  PRIMARY KEY (roomId, roomName)
);

-- ---
-- Table 'Friends'
-- 
-- ---

DROP TABLE IF EXISTS Friends;
    
CREATE TABLE Friends (
  friendFrom VARCHAR(25),
  friendTo VARCHAR(25)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE Messages ADD FOREIGN KEY (userId) REFERENCES Users (userId);
-- ALTER TABLE Messages ADD FOREIGN KEY (roomName) REFERENCES Rooms (roomId);
-- ALTER TABLE Users ADD FOREIGN KEY (roomId) REFERENCES Rooms (roomId);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE Messages ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Users ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Rooms ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Friends ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO Messages (msgId,userId,text,timeStamp,roomName) VALUES
-- ('','','','','');
-- INSERT INTO Users (userId,userName,roomName) VALUES
-- ('','','');
-- INSERT INTO Rooms (roomName) VALUES
-- ('');
-- INSERT INTO Friends (friendFrom,friendTo) VALUES
-- ('','');

