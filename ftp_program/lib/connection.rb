require 'net/ftp'

class Connection

	#Instance Variables
	attr_accessor :host, :username, :password, :account, :port, :ftp

	#Defaults
	DEFAULT_PORT 					= 21
	DEFAULT_TIMEOUT				= 120 #sec

	def initialize(args) 
		@host = args[:host] || raise("host cannot be null")
		@username = args[:username] || raise("username cannot be null")
		@password = args[:password] || raise("password cannot be null")
		@acount = args[:account] || "Not set"
		@port = args[:port] || DEFAULT_PORT
	end

	#returns a hash that contains connections status
	def open
		@ftp = Net::FTP.new
		@ftp.connect(@host, @port)
		@ftp.login(@username, @password)
		@ftp.status
	end
end