DO $$
BEGIN
  IF (SELECT COUNT(*) FROM users WHERE username IN ('alice')) <> 2 THEN
    RAISE EXCEPTION 'Not all new users inserted';
  END IF;
END
$$;