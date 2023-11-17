DO $$ 
BEGIN
  IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'myposts') THEN
    EXECUTE 'DROP TABLE myposts';
  END IF;
END $$;

CREATE TABLE myposts(
  post_id SERIAL PRIMARY KEY,
  post_date DATE NOT NULL DEFAULT CURRENT_DATE,
  post_title TEXT,
  post_body TEXT
);
