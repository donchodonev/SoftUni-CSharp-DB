ALTER TABLE USERS
DROP CONSTRAINT PK_PRIMARY

ALTER TABLE USERS
ADD CONSTRAINT  PK_USERNAME PRIMARY KEY (USERNAME)

ALTER TABLE USERS
ADD CONSTRAINT CHK_UNAME_LENGTH CHECK (LEN(USERNAME) >= 3)