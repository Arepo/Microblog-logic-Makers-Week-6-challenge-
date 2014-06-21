require 'sinatra'
require 'data_mapper'
require_relative 'controllers/users'
require_relative 'controllers/application.rb'
require_relative 'models/user'
require_relative 'helpers/current_cheeter'


env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!

enable :sessions