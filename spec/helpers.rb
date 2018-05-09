def add_bookmarks
  connection = PG.connect( dbname: 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks VALUES(DEFAULT,'http://makersacademy.com');")
  connection.exec("INSERT INTO bookmarks VALUES(DEFAULT,'http://google.com');")
  connection.exec("INSERT INTO bookmarks VALUES(DEFAULT,'http://destroyallsoftware.com');")
end
