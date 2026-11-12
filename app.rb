require "sinatra"
require "json"
require "pg"
require "dotenv/load"

db = PG.connect(
  host: ENV["DB_HOST"],
  port: ENV["DB_PORT"],
  dbname: ENV["DB_NAME"],
  user: ENV["DB_USER"],
  password: ENV["DB_PASSWORD"]
)

get "/" do
  content_type :json

  {
    message: "Personal Finance API is running",
    database: "connected"
  }.to_json
end