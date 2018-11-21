CREATE TABLE IF NOT EXIST Contents(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255),
  permalink varchar(255),
  description text,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXIST Categories(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255),
  permalink varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXIST Tags(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255),
  color varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXIST Attachments(
  id int(11) NOT NULL AUTO_INCREMENT,
  href varchar(255),
  contentType varchar(255),
  description varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXIST ContentsCategoriesTh(
  id int(11) NOT_NULL AUTO_INCREMENT,
  contentId int(11),
  categoryId int(11),
  PRIMARY KEY (id),
  FOREIGN KEY (contentId) REFERENCES Contents(id),
  FOREIGN KEY (categoryId) REFERENCES Categories(id)
);

CREATE TABLE IF NOT EXIST ContentsTagsTh(
  id int(11) NOT_NULL AUTO_INCREMENT,
  contentId int(11),
  tagId int(11),
  PRIMARY KEY (id),
  FOREIGN KEY (contentId) REFERENCES Contents(id),
  FOREIGN KEY (tagId) REFERENCES Tags(id)

);

CREATE TABLE IF NOT EXIST ContentsAttachmentsTh(
  id int(11) NOT_NULL AUTO_INCREMENT,
  contentId int(11),
  attachmentId int(11),
  PRIMARY KEY (id),
  FOREIGN KEY (contentId) REFERENCES Contents(id),
  FOREIGN KEY (attachmentId) REFERENCES Attachments(id)
);