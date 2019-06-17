create sequence hibernate_sequence start 1 increment 1;

create table message
(
    id       int8          not null,
    filename varchar(255),
    tag      varchar(255)  not null,
    text     varchar(255)  not null,
    rok      varchar(255)  not null,
    opis     varchar(2048) not null,
    user_id  int8,
    primary key (id)
);

create table sliders
(
    id       int8          not null,
    filename varchar(255),
    tag      varchar(255)  not null,
    text     varchar(255)  not null,
    rok      varchar(255)  not null,
    opis     varchar(2048) not null,
    user_id  int8,
    primary key (id)
);
create table user_role
(
    user_id int8 not null,
    roles   varchar(255)
);

create table usr
(
    id        int8         not null,
--   activation_code varchar(255),
    active    boolean      not null,
    email     varchar(255),
    password  varchar(255) not null,
    username  varchar(255) not null,
    lastname  varchar(255) not null,
    firstname varchar(255) not null,
    date      varchar(255) not null,
    rabat     varchar(255) not null,
    userdate  varchar(255) not null,
    primary key (id)
);

alter table if exists message
    add constraint message_user_fk
    foreign key (user_id) references usr;

alter table if exists logo_Image_Bank
    add constraint logo_Image_Bank_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;

--
-- CREATE TABLE SPRING_SESSION (
--   PRIMARY_ID CHAR(36) NOT NULL,
--   SESSION_ID CHAR(36) NOT NULL,
--   CREATION_TIME BIGINT NOT NULL,
--   LAST_ACCESS_TIME BIGINT NOT NULL,
--   MAX_INACTIVE_INTERVAL INT NOT NULL,
--   EXPIRY_TIME BIGINT NOT NULL,
--   PRINCIPAL_NAME VARCHAR(100),
--   CONSTRAINT SPRING_SESSION_PK PRIMARY KEY (PRIMARY_ID)
-- );
--
-- CREATE UNIQUE INDEX SPRING_SESSION_IX1 ON SPRING_SESSION (SESSION_ID);
-- CREATE INDEX SPRING_SESSION_IX2 ON SPRING_SESSION (EXPIRY_TIME);
-- CREATE INDEX SPRING_SESSION_IX3 ON SPRING_SESSION (PRINCIPAL_NAME);
--
-- CREATE TABLE SPRING_SESSION_ATTRIBUTES (
--   SESSION_PRIMARY_ID CHAR(36) NOT NULL,
--   ATTRIBUTE_NAME VARCHAR(200) NOT NULL,
--   ATTRIBUTE_BYTES BYTEA NOT NULL,
--   CONSTRAINT SPRING_SESSION_ATTRIBUTES_PK PRIMARY KEY (SESSION_PRIMARY_ID, ATTRIBUTE_NAME),
--   CONSTRAINT SPRING_SESSION_ATTRIBUTES_FK FOREIGN KEY (SESSION_PRIMARY_ID) REFERENCES SPRING_SESSION(PRIMARY_ID) ON DELETE CASCADE
-- );
--
-- CREATE INDEX SPRING_SESSION_ATTRIBUTES_IX1 ON SPRING_SESSION_ATTRIBUTES (SESSION_PRIMARY_ID);
