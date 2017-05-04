# If you want to overwrite your database you will need
# to delete it before running this file
require 'sqlite3'

$db = SQLite3::Database.new "students.db"

module StudentDB
  def self.setup
    $db.execute(
      <<-SQL
        CREATE TABLE students (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,

          # ADD THE ADDITIONAL ATTRIBUTES HERE!

          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    # Add a few records to your database when you start
    $db.execute(
      <<-SQL
        INSERT INTO students
          (first_name, last_name, created_at, updated_at)
        VALUES
          ('Brick','Thornton',DATETIME('now'), DATETIME('now'));

        # CREATE TWO MORE STUDENTS WHO ARE AT LEAST AS COOL AS THIS ONE.

      SQL
    )
  end
end
