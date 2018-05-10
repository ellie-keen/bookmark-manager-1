def add_bookmarks
  connection = PG.connect( dbname: 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks VALUES(DEFAULT,'http://makersacademy.com', 'Makers Academy');")
  connection.exec("INSERT INTO bookmarks VALUES(DEFAULT,'http://google.com', 'Google');")
  connection.exec("INSERT INTO bookmarks VALUES(DEFAULT,'http://destroyallsoftware.com', 'Destroy All Software');")
end
