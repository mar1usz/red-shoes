require_relative 'config/environment'

run Rails.application

Launchy.open("http://localhost:3000/api/brands/1")
