-- user
INSERT INTO "user"(id, user_name, email, created, memo)
VALUES (1, 'User 1', 'user1@example.com', '2020-01-20 08:34:19', null);

INSERT INTO "user"(id, user_name, email, created, memo)
VALUES (2, 'User 2', 'user2@example.com', '2019-11-03 14:10:35', 'MEMO2');

-- inquiry
INSERT INTO inquiry(id, user_id, contents, invalid, created)
VALUES (1, 1, 'Contents1', '0', '2020-03-05 15:12:23');

INSERT INTO inquiry(id, user_id, contents, invalid, created)
VALUES (2, 2, 'Contents2', '1', '2020-04-15 09:02:13');

INSERT INTO inquiry(id, user_id, contents, invalid, created)
VALUES (3, 1, 'Contents3', '0', '2020-05-20 11:14:20');

-- inquiry_tag
INSERT INTO inquiry_tag(id, inquiry_id, description, created)
VALUES (1, 1, '問合せ', CURRENT_DATE());

INSERT INTO inquiry_tag(id, inquiry_id, description, created)
VALUES (2, 1, '使い方', CURRENT_DATE());

INSERT INTO inquiry_tag(id, inquiry_id, description, created)
VALUES (3, 2, 'クレーム', CURRENT_DATE());

INSERT INTO inquiry_tag(id, inquiry_id, description, created)
VALUES (4, 2, '請求', CURRENT_DATE());

INSERT INTO inquiry_tag(id, inquiry_id, description, created)
VALUES (5, 3, '要望', CURRENT_DATE());

INSERT INTO inquiry_tag(id, inquiry_id, description, created)
VALUES (6, 3, '機能', CURRENT_DATE());

INSERT INTO inquiry_tag(id, inquiry_id, description, created)
VALUES (7, 3, '問合せ', CURRENT_DATE());

-- inquiry_message
INSERT INTO inquiry_message(id, inquiry_id, message, created)
VALUES (1, 1, 'メッセージ1', CURRENT_DATE());

INSERT INTO inquiry_message(id, inquiry_id, message, created)
VALUES (2, 1, 'メッセージ2', CURRENT_DATE());

INSERT INTO inquiry_message(id, inquiry_id, message, created)
VALUES (3, 1, 'メッセージ3', CURRENT_DATE());

-- some_table
INSERT INTO some_table(id, number_date, string_integer,  string_boolean, string_list)
VALUES (1, NULL, '100', '+', 'A,B,C,D');

INSERT INTO some_table(id, number_date, string_integer,  string_boolean, string_list)
VALUES (2, 20200523, '-309', '-', 'X,Y,Z');
