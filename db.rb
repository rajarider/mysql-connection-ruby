
class Database

	require 'mysql2'

	def parent_method
	
	@db_connection = connection_method
	
        puts  @db_connection

	end

	def connection_method
		@db_host  = 'localhost'
		@db_user  = 'root'
		@db_pass  = 'candy345'
		@db_name = 'testing'

		begin
		   client = Mysql2::Client.new(host: @db_host, username: @db_user, password: @db_pass, database: @db_name)
		   @db_connection_result = "success"
		rescue Exception => e
		   @db_connection_result =  e.message
		end
		return @db_connection_result

	end

end

var1 = Database.new

var1.parent_method




