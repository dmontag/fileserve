#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

@public_dir = ARGV[0]
@user = ARGV[1]
@pass = ARGV[2]

set :public_folder, @public_dir

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == @user and password == @pass
end
  
