CREATE TABLE Content(
  id int(11),
  title varchar(255),
  PermaLink varchar(255),
  PRIMARY KEY (id), AUTO_INCREMENT
);

CREATE TABLE Categories(
  id int(11),
  name varchar(255),
  permalink varchar (255),
  PRIMARY KEY (id), AUTO_INCREMENT
);

CREATE TABLE Tags(
  id int(11),
  name varchar(255),
  permalink varchar (255),
  PRIMARY KEY (id), AUTO_INCREMENT
);

CREATE TABLE Attachments(
  id int(11),
  permalink varchar (255),
  contentType varchar(255),
  description varchar(255),
  PRIMARY KEY (id), AUTO_INCREMENT
);

CREATE TABLE ContentsCategoriesTh(

);

CREATE TABLE ContentsTagsTh(

);

CREATE TABLE ContentsAttachmentsTh(

);