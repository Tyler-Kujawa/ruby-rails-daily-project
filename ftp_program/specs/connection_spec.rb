require_relative './spec_helper'

describe Connection do 
	it 'creates a connection object upon instantiation' do 
		test_connection = Connection.new(host: 'ftp.tykujawa.com', username: 'tkujawa', password: 'miles6183');
		test_connection.should be_an_instance_of Connection
	end

	it 'should be open a connection to the correct server' do 
		test_connection = Connection.new(host: 'ftp.tykujawa.com', username: 'tkujawa', password: 'miles6183');
		puts test_connection.open.status
	end
end