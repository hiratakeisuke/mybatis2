-- ユーザー
CREATE TABLE "user"
(
   id INT NOT NULL AUTO_INCREMENT,
   user_name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   created DATETIME NOT NULL,
   memo VARCHAR(500),
   PRIMARY KEY(id)
);

-- 問合せ
CREATE TABLE inquiry
(
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    contents VARCHAR(500) NOT NULL,
    invalid CHAR(1) NOT NULL CHECK(invalid in('0', '1')),
    created DATETIME NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_inquiry_user
        FOREIGN KEY (user_id) REFERENCES "user" (id)
);

CREATE TABLE inquiry_tag
(
    id INT NOT NULL AUTO_INCREMENT,
    inquiry_id INT NOT NULL,
    description VARCHAR(100) NOT NULL,
    created DATETIME NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_inquiry_tag_inquiry
        FOREIGN KEY (inquiry_id) REFERENCES inquiry (id)
);

CREATE TABLE inquiry_message
(
    id INT NOT NULL AUTO_INCREMENT,
    inquiry_id INT NOT NULL,
    message CLOB(1M) NOT NULL,
    created DATETIME NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_inquiry_message_inquiry
        FOREIGN KEY (inquiry_id) REFERENCES inquiry (id)
);

CREATE TABLE some_table
(
    id INT NOT NULL,
    number_date INT,
    string_integer VARCHAR(10),
    string_boolean CHAR(1) NOT NULL CHECK(string_boolean in('-', '+')),
    string_list VARCHAR(500),
    PRIMARY KEY(id)
);
