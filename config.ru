# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application


require 'rack/cors'
use Rack::Cors do

  # allow all origins in development
  allow do
          origins 'localhost:3001'
  
          resource '/cors',
            :headers => :any,
            :methods => [:post],
            :credentials => true,
            :max_age => 0
            
          resource '*',
            :headers => :any,
            :methods => [:get, :post, :delete, :put, :patch, :options, :head],
            :max_age => 0,
            :expose => ['access-token', 'client', 'token-type', 'expiry', 'uid']
  end
end