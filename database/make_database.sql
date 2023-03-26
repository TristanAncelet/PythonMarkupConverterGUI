CREATE TABLE IF NOT EXISTS settings (
  setting_id INTEGER PRIMARY KEY AUTOINCREMENT,
  setting_name VARCHAR(255) NOT NULL UNIQUE,
  setting_type VARCHAR(255), -- numeric, selection, color

  setting_options TEXT,      -- will only be used by selection type settings
                             -- will contain comma delimited values (EX: "this,was,a,test")
                             -- that will need to be parsed by the frontend when shown.

  setting_value BLOB;        -- this will store the setting value as whatever is passed into it.
                             -- which will allow it to be mutlifunctional (and will be up to the)
                             -- front end not to mess up.
);


CREATE TABLE IF NOT EXISTS lang (
  lang_id INTEGER PRIMARY KEY AUTOINCREMENT,
  lang_name VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO lang (lang_name) VALUES
    ('JSON'),
    ('YAML'),
    ('XML');


CREATE TABLE IF NOT EXISTS conversion_values (
  value_id INTEGER PRIMARY KEY AUTOINCREMENT,
  value_lang_id INTEGER NOT NULL,
  value_content TEXT NOT NULL UNIQUE, -- because I don't want duplicate values in this table. We will re-use IDs in the conversions table 
  FOREIGN KEY (value_lang_id) REFERENCES lang(lang_id)
); 

CREATE TABLE IF NOT EXISTS conversions (
  conversion_id INTEGER PRIMARY KEY AUTOINCREMENT,
  to_language_id INTEGER NOT NULL,
  from_language_id INTEGER NOT NULL,
  input_value_id INTEGER NOT NULL,
  output_value_id INTEGER NOT NULL,
  FOREIGN KEY (to_language_id) REFERENCES lang(lang_id),
  FOREIGN KEY (from_language_id) REFERENCES lang(lang_id)
  FOREIGN KEY (input_value_id) REFERENCES conversion_values(value_id)
  FOREIGN KEY (output_value_id) REFERENCES conversion_values(value_id)
);


CREATE VIEW conversion_table_values AS 
  SELECT  conversion_id, 
          CONCAT( tl.lang_name, " (", to_language_id, ")") AS to_language,
          CONCAT( fl.lang_name, " (", from_language_id, ")") AS from_language,
          iv.value_content AS input_value,
          ov.value_content AS output_value
        
        FROM conversions
        JOIN lang              tl ON t.lang_id = to_language_id
        JOIN lang              fl ON t.lang_id = from_language_id
        JOIN conversion_values iv ON iv.value_id = input_value_id
        JOIN conversion_values ov ON ov.value_id = input_value_id;
          
