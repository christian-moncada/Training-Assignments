--admin data
INSERT INTO admin_info VALUES('A00001','admin@admin.org','adminpass');
--users data
INSERT INTO user_info VALUES('U00001','Christian Moncada','user1@user.com','cpass',sysdate,'Valenzuela','639466210547');
INSERT INTO user_info VALUES('U00002','Olivia Smith','user2@user.com','opass',sysdate,'California','63923415409');
INSERT INTO user_info VALUES('U00003','Noah Johnson','user3@user.com','npass',sysdate,'Texas','639133572211');
INSERT INTO user_info VALUES('U00004','Oliver Williams','user4@user.com','olpass',sysdate,'Washington','639123098541');
INSERT INTO user_info VALUES('U00005','Charlotte Brown','user5@user.com','crpass',sysdate,'Alabama','639987230269');
--categories data
INSERT INTO categories VALUES('CT0001','Laptop');
INSERT INTO categories VALUES('CT0002','Mobiles');
INSERT INTO categories VALUES('CT0003','Garden');
INSERT INTO categories VALUES('CT0004','Cameras');
INSERT INTO categories VALUES('CT0005','Home Appliances');
INSERT INTO categories VALUES('CT0006','Gaming');
INSERT INTO categories VALUES('CT0007','Sports');
INSERT INTO categories VALUES('CT0008','Travel');
INSERT INTO categories VALUES('CT0009','Mens Apparel');
INSERT INTO categories VALUES('CT0010','Womens Apparel');
--coupon data
INSERT INTO coupon VALUES('CP0001','25% off Coupon',0.25,sysdate+30);
INSERT INTO coupon VALUES('CP0002','20% off Coupon',0.20,sysdate+35);
INSERT INTO coupon VALUES('CP0003','15% off Coupon',0.15,sysdate+40);
INSERT INTO coupon VALUES('CP0004','10% off Coupon',0.10,sysdate+45);
--product data
INSERT INTO product VALUES('P00001','Acer','CT0001',20000,'acer.jpg',10);
INSERT INTO product VALUES('P00002','Asus','CT0001',25000,'asus.jpg',9);
INSERT INTO product VALUES('P00003','Iphone 13','CT0002',35000,'iphone.jpg',6);
INSERT INTO product VALUES('P00004','Samsung S21','CT0002',25000,'samsung.jpg',9);
INSERT INTO product VALUES('P00005','Canon','CT0004',25000,'canon.jpg',11);
INSERT INTO product VALUES('P00006','Air Fryer','CT0005',15000,'airfryer.jpg',2);
INSERT INTO product VALUES('P00007','Mountain Bike','CT0007',22000,'mbike.jpg',4);
INSERT INTO product VALUES('P00008','Denim Jacket','CT0009',5000,'djacket.jpg',20);
--cart data
INSERT INTO cart VALUES('C00020','U00005');
INSERT INTO cart VALUES('C00025','U00004');
INSERT INTO cart VALUES('C00030','U00003');
INSERT INTO cart VALUES('C00035','U00001');
INSERT INTO cart VALUES('C00040','U00002');
--cart items data
INSERT INTO cart_items VALUES('CI0172','C00020','U00005','P00001',1);
INSERT INTO cart_items VALUES('CI0155','C00030','U00001','P00003',5);
INSERT INTO cart_items VALUES('CI0194','C00025','U00002','P00007',2);
INSERT INTO cart_items VALUES('CI0212','C00035','U00004','P00005',3);
INSERT INTO cart_items VALUES('CI0225','C00040','U00003','P00002',4);
--order data
INSERT INTO orders VALUES('OR3415','C00040','U00002',sysdate,sysdate+7,'CP0004',null,'COD');
INSERT INTO orders VALUES('OR4621','C00035','U00004',sysdate+15,sysdate+22,'CP0002',25000,'DEBIT');
INSERT INTO orders VALUES('OR5813','C00025','U00002',sysdate+20,sysdate+27,'CP0003',22000,'CREDIT');
INSERT INTO orders VALUES('OR2507','C00030','U00003',sysdate+30,sysdate+37,'CP0002',20000,'WALLET');
INSERT INTO orders VALUES('OR1239','C00020','U00005',sysdate+40,sysdate+47,'CP0001',35000,'COD');