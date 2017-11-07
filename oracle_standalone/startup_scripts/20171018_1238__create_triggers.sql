-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new triggers @ testuser schema
CREATE TRIGGER testuser.app_users_insert
  BEFORE INSERT ON testuser.app_users
  FOR EACH ROW
BEGIN
  SELECT testuser.app_users_seq.nextval
  INTO :new.id
  FROM dual;
END;

CREATE TRIGGER testuser.app_authorities_insert
  BEFORE INSERT ON testuser.app_authorities
  FOR EACH ROW
BEGIN
  SELECT testuser.app_authorities_seq.nextval
  INTO :new.id
  FROM dual;
END;
