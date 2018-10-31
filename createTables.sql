CREATE TABLE Contents(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255),
  permalink varchar(255),
  description text,
  PRIMARY KEY (id)
);

CREATE TABLE Categories(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255),
  permalink varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE Tags(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255),
  color varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE Attachments(
  id int(11) NOT NULL AUTO_INCREMENT,
  href varchar(255),
  contentType varchar(255),
  description varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE ContentsCategoriesTh(
  id int(11) NOT_NULL AUTO_INCREMENT,
  contentId int(11),
  categoryId int(11),
  PRIMARY KEY (id),
  FOREIGN KEY (contentId) REFERENCES Contents(id),
  FOREIGN KEY (categoryId) REFERENCES Categories(id)
);

CREATE TABLE ContentsTagsTh(
  id int(11) NOT_NULL AUTO_INCREMENT,
  contentId int(11),
  tagId int(11),
  PRIMARY KEY (id),
  FOREIGN KEY (contentId) REFERENCES Contents(id),
  FOREIGN KEY (tagId) REFERENCES Tags(id)

);

CREATE TABLE ContentsAttachmentsTh(
  id int(11) NOT_NULL AUTO_INCREMENT,
  contentId int(11),
  attachmentId int(11),
  PRIMARY KEY (id),
  FOREIGN KEY (contentId) REFERENCES Contents(id),
  FOREIGN KEY (attachmentId) REFERENCES Attachments(id)
);