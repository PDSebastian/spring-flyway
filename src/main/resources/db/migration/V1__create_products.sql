CREATE TABLE products (
                          id       BINARY(16)    NOT NULL,
                          name     VARCHAR(100)  NOT NULL,
                          sku      VARCHAR(8)    NOT NULL,
                          category VARCHAR(20)   NOT NULL,
                          price    DECIMAL(10,2) NOT NULL,
                          stock    INT           NOT NULL,
                          active   BIT(1)        NOT NULL,
                          added_on DATE          NOT NULL,
                          PRIMARY KEY (id),
                          CONSTRAINT uk_products_sku UNIQUE (sku),
                          CONSTRAINT chk_products_stock CHECK (stock >= 0)
);
