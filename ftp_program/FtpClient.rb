require_relative './lib/connection.rb'
require_relative './specs/mini_ftp_server'

module  FtpClient
	def FtpClient.openConnection(args)
		connection = Connection.new(args)
		return connection.open
	end
end

server = MiniFtpServer.start

puts server[:host]
args = { host: server[:interface], port: server[:port], username: 'admin', password: 'none'}

puts FtpClient.openConnection(args)