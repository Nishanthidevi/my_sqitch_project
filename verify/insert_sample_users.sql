-- SELECT COUNT(*) FROM users WHERE username IN ('test3');

-- DO $$
-- DECLARE
--   user_count int;
-- BEGIN
--   SELECT COUNT(*) INTO user_count FROM users WHERE username IN ('johndoe', 'janedoe');
--   IF user_count <> 2 THEN
--     RAISE EXCEPTION 'Expected 2 users, found %', user_count;
--   END IF;
-- END
-- $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_name = 'users'
      AND column_name = 'fname'
  ) THEN
    RAISE EXCEPTION 'Column fname does not exist';
  END IF;

  IF NOT EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_name = 'users'
      AND column_name = 'lname'
  ) THEN
    RAISE EXCEPTION 'Column lname does not exist';
  END IF;
END
$$;
