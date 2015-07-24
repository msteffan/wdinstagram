require "bundler/setup"

require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "db/connection"

# models
require_relative "models/entry"
require_relative "models/author"
require_relative "models/comment"

# conroller(s)
require_relative "controllers/entries"
require_relative "controllers/authors"
require_relative "controllers/comments"
