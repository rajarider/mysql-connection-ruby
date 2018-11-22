
require 'mysql2'

@db_host  = 'localhost'
@db_user  = 'root'
@db_pass  = 'candy345'
@db_name = 'testing'

begin
   client = Mysql2::Client.new(host: @db_host, username: @db_user, password: @db_pass, database: @db_name)
   puts " #{@db_name} database is connected"
 rescue Exception => e
   puts e.message
 end
