-- A SQL script that creates a trigger that resets the
-- attribute valid_email only when the email has been changed.
DROP TRIGGER IF EXIST reset_att
BEFORE UPDATE ON email
FOR EACH ROW UPDATE valid_email
BEGIN
	IF NEW.email != OLD.email THEN
		SET valid_email = 0;
	ELSE
		NEW.valid_email = NEW.valid_email;
	END IF;
END;

