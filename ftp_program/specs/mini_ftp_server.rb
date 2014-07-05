require 'ftpd'
require 'tmpdir'

# A very minimal ftp server for testing 
module MiniFtpServer

	def MiniFtpServer.start
		server = nil

		Dir.mktmpdir do |temp_dir|
			driver = Driver.new(temp_dir)
			server = Ftpd::FtpServer.new(driver)
			server.start
			puts "Server started, listening on port #{server.bound_port}"
		end

		return {interface: server.interface, port: server.bound_port}
	end

	class Driver
		def initialize(temp_dir)
			@temp_dir = temp_dir
		end

		def authenticate(user, password)
			true
		end

		def file_system(user)
			Ftpd::DiskFileSystem.new(@temp_dir)
		end
	end
end