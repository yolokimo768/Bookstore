-- This file contains all the DDL statements to create all the realtions in book store Database

-- First, you need to create databse with name Bookstore. Then, run this file to create all the realtions of this schema

create table Publisher
(
    P_id              INT,
    Name              varchar(30) NOT NULL,
    Email             varchar(30),
    phoneNumber       varchar(10),
    Address           varchar(50),
    BankAccount       varchar(50) NOT NULL,
    PRIMARY KEY (P_id)
);

create table Author
(
    A_id              INT,
    FirstName         varchar(30) NOT NULL,
    LastName          varchar(30) NOT NULL,
    PRIMARY KEY (A_id)
);

create table Book
(
    ISBN            varchar(13),
    Title           varchar(50) NOT NULL,
    numberofPages   INT NOT NULL,
    price           numeric(6,2) NOT NULL,
    genre           varchar(10) NOT NULL,
    Quantity        INT NOT NULL,
    P_id            INT NOT NULL,
    P_percentage    numeric(4,2),
    PRIMARY KEY (ISBN),
    FOREIGN KEY (P_id) REFERENCES Publisher(P_id)
);

create table Author_Book
(
    A_id            INT,
    ISBN            varchar(13),
    PRIMARY KEY (A_id, ISBN),
    FOREIGN KEY (A_id) REFERENCES Author(A_id),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

create table Users
(
    U_id              INT,
    FirstName         varchar(30) NOT NULL,
    LastName          varchar(30) NOT NULL,
    Email             varchar(30),
    PhoneNumber       varchar(10),
    Gender            CHAR(1),
    Username          varchar(50) NOT NULL,
    U_password          varchar(15) NOT NULL,
    Address           varchar(50),
    BankAccount       varchar(50) NOT NULL,
    PRIMARY KEY (U_id)
);

create table Orders
(
    O_id                INT,
    TrackingNumber      varchar(15) NOT NULL,
    TotalCost           numeric(5,2) NOT NULL,
    Date                DATE,
    shippingAddress    varchar(50) NOT NULL,
    billingAddress     varchar(50) NOT NULL,
    Location           varchar(50),
    ShippingService    varchar(20),
    U_id               INT,
    PRIMARY KEY (O_id),
    FOREIGN KEY (U_id) REFERENCES Users(U_id)
);

create table Order_Book
(
    ISBN       varchar(13),
    O_id       INT,
    Quantity   INT NOT NULL,
    PRIMARY KEY (ISBN, O_id),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (O_id) REFERENCES Orders(O_id)
);

--Change the id of author table to make it auto increment
CREATE SEQUENCE author_a_id_seq OWNED BY author.a_id;
ALTER TABLE author ALTER COLUMN a_id SET DEFAULT nextval('author_a_id_seq');
UPDATE author SET a_id = nextval('author_a_id_seq');

--Change the id of publisher table to make it auto increment
CREATE SEQUENCE publisher_p_id_seq OWNED BY publisher.p_id;
ALTER TABLE publisher ALTER COLUMN p_id SET DEFAULT nextval('publisher_p_id_seq');
UPDATE publisher SET p_id = nextval('publisher_p_id_seq');

--Change the id of orders table to make it auto increment
CREATE SEQUENCE orders_o_id_seq OWNED BY orders.o_id;
ALTER TABLE orders ALTER COLUMN o_id SET DEFAULT nextval('orders_o_id_seq');
UPDATE orders SET o_id = nextval('orders_o_id_seq');

CREATE SEQUENCE orders_o_trak_seq OWNED BY orders.TrackingNumber;
ALTER TABLE orders ALTER COLUMN TrackingNumber SET DEFAULT nextval('orders_o_trak_seq');
UPDATE orders SET TrackingNumber = nextval('orders_o_trak_seq');


--Change the id of users table to make it auto increment
CREATE SEQUENCE users_u_id_seq OWNED BY users.u_id;
ALTER TABLE users ALTER COLUMN u_id SET DEFAULT nextval('users_u_id_seq');
UPDATE users SET u_id = nextval('users_u_id_seq');
