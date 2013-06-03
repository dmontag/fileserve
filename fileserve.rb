#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

@public_dir = ARGV[0]
@user = ARGV[1]
@pass = ARGV[2]
@port = ARGV[3].to_i

set :public_folder, @public_dir
set :port, @port

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == @user and password == @pass
end

get "/" do
  "Hello there"
end
  
