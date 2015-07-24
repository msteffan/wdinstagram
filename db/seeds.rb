require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/entry"


Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: "Stumpy corgi on a stump")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: " corgi")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: " corgi")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: " corgi")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: " corgi")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: "second corgi")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: "second corgi")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: "second corgi")
Entry.create(author: "Nick", photo_url: "http://placecorgi.com/800/800", date_taken: "July 24", caption: "second corgi")


binding.pry
puts "database seeded!"
