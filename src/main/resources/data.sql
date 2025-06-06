-- 권한(Role) 데이터
INSERT IGNORE INTO role (name) VALUES ('ROLE_USER');
INSERT IGNORE INTO role (name) VALUES ('ROLE_ADMIN');

-- 사용자(User) 데이터 (비밀번호는 BCrypt로 암호화된 값)
INSERT IGNORE INTO user (email, password) VALUES ('admin@example.com', '$2a$12$IBdi9Og7ZGP8Q.MpnI9hb.8JRVyws0bAQRYby3XmJ0IWD7UkC77xy');
INSERT IGNORE INTO user (email, password) VALUES ('user@example.com', '$2a$10$aU6rN3w8YpUqHuFJgTRM8uJt1D1L8b8ZyPU8zGBK6mZxH3XwAqk6a');

-- 유저-권한 매핑 (user_roles)
INSERT IGNORE INTO user_roles (user_id, role_id) VALUES (1, 1);
INSERT IGNORE INTO user_roles (user_id, role_id) VALUES (1, 2);
INSERT IGNORE INTO user_roles (user_id, role_id) VALUES (2, 1);

-- (아래는 기존 product 데이터)
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('Galaxy S6', 'Samsung Corp', 'Korea', 600.0);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('Galaxy S8', 'Samsung Corp', 'Korea', 800.0);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('Galaxy S10', 'Samsung Corp', 'Korea', 1000.0);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('Galaxy S21', 'Samsung Corp', 'Korea', 1000.0);

INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('MacBook Air1', 'Apple', 'China',  10000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('MacBook Air2', 'Apple', 'China',  10000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('MacBook Air3', 'Apple', 'China',  10000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('MacBook Air4', 'Apple', 'China',  10000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('MacBook Air5', 'Apple', 'China',  10000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('MacBook Pro1', 'Apple', 'China',  15000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('MacBook Pro2', 'Apple', 'China',  15000);

INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('iPad Air', 'Apple', 'China',  500);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('iPad Pro', 'Apple', 'China',  800);

INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('소나타', 'Hyundai', 'Japan',  20000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('그랜저', 'Hyundai', 'Japan',  30000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('제너시스', 'Hyundai', 'Japan',  50000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('에쿠스', 'Hyundai', 'Japan',  60000);

INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('Accord', 'Honda', 'Japan',  25000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('sienna', 'Honda', 'Japan',  40000);

INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('Camry', 'Toyota', 'Japan',  25000);
INSERT IGNORE INTO product (name, brand, made_in, price) VALUES ('Lexus', 'Toyota', 'Japan',  50000);