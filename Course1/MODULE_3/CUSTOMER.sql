CREATE TABLE CUSTOMER
(   --ATTR
    CUSTNO      VARCHAR2(8)   NOT NULL,
    CUSTNAME    VARCHAR(50)   NOT NULL,
    ADDRESS     VARCHAR(100)  NOT NULL,
    INTERNAL    CHAR(1)       NOT NULL,
    CONTACT     VARCHAR(50)   NOT NULL,
    PHONE       CHAR(7)       NOT NULL,
    CITY        VARCHAR(25)   NOT NULL,
    STATE       CHAR(2)       NOT NULL,
    ZIP         INT           NOT NULL,
    --KEY
    PRIMARY KEY (CUSTNO)
    --CHECK
);