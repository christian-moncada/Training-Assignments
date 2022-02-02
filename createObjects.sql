--creating ADMIN table
CREATE TABLE admin_info(
    admin_id CHAR(6) PRIMARY KEY,
    admin_email VARCHAR(15),
    admin_password VARCHAR(16),
     CONSTRAINT ck_adm_id CHECK(admin_id LIKE 'A%')
);
--creating USERS table
CREATE TABLE user_info(
    user_id CHAR(6) PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL,
    user_email VARCHAR(15) NOT NULL,
    user_pass VARCHAR(16) NOT NULL,
    date_of_reg DATE NOT NULL,
    user_address VARCHAR(15),
    user_contact VARCHAR(12),
    CONSTRAINT ck_usr_id CHECK(user_id LIKE 'U%')
);
--creating CART table
CREATE TABLE cart(
    cart_id CHAR(6) PRIMARY KEY,
    user_id CHAR(6),
    CONSTRAINT fk_userid FOREIGN KEY(user_id) REFERENCES user_info(user_id),
    CONSTRAINT ck_crt_id CHECK(cart_id LIKE 'C%')
);
--creating CATEGORIES table
CREATE TABLE categories(
    category_id VARCHAR(6) PRIMARY KEY,
    category_name VARCHAR(25) NOT NULL,
    CONSTRAINT ck_cat_id CHECK(category_id LIKE 'CT%')
);
--creating COUPON table
CREATE TABLE coupon(
    coupon_id VARCHAR(6) PRIMARY KEY,
    coupon_name varchar(15) NOT NULL,
    coupon_discount NUMBER(2,2) NOT NULL,
    coupon_expiry DATE NOT NULL,
    CONSTRAINT ck_cop_id CHECK(coupon_id LIKE 'CP%')
);
--creating PRODUCT table
CREATE TABLE product(
    product_id VARCHAR(6) PRIMARY KEY,
    product_name VARCHAR(15) NOT NULL,
    category_id VARCHAR(6),
    product_price NUMBER(6) DEFAULT 0,
    product_img VARCHAR(30),
    product_availabe_qty NUMBER(6),
    CONSTRAINT fk_categoryid FOREIGN KEY(category_id) REFERENCES categories(category_id),
    CONSTRAINT ck_prod_id CHECK(product_id LIKE 'P%')
);
--creating CART ITEMS table
CREATE TABLE cart_items(
    cart_items_id VARCHAR(6) PRIMARY KEY,
    cart_id CHAR(6),
    user_id CHAR(6),
    product_id VARCHAR(6),
    product_qty NUMBER(6),
    CONSTRAINT fk_ci_cartid FOREIGN KEY(cart_id) REFERENCES cart(cart_id),
    CONSTRAINT fk_ci_userid FOREIGN KEY(user_id) REFERENCES user_info(user_id),
    CONSTRAINT fk_ci_productid FOREIGN KEY(product_id) REFERENCES product(product_id),
    CONSTRAINT ck_citem_id CHECK(cart_items_id LIKE 'CI%')
);
--creating ORDERS table
CREATE TABLE orders(
    order_id VARCHAR(6) PRIMARY KEY,
    cart_id CHAR(6),
    user_id CHAR(6),
    order_date DATE DEFAULT sysdate,
    delivery_date DATE,
    coupon_id varchar(6),
    bill_amount NUMBER(7,2),
    payment_method varchar(10),
    CONSTRAINT fk_ord_cartid FOREIGN KEY(cart_id) REFERENCES cart(cart_id),
    CONSTRAINT fk_ord_userid FOREIGN KEY(user_id) REFERENCES user_info(user_id),
    CONSTRAINT ck_ord_dlvry CHECK(delivery_date = order_date + 7),
    CONSTRAINT ck_ord_pymnt CHECK(payment_method in ('COD','DEBIT','CREDIT','WALLET')),
     CONSTRAINT ck_ord_id CHECK(order_id LIKE 'OR%')
);