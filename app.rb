
require "sinatra"
require "json"

get "/" do
  content_type :json

  {
    message: "Personal Finance API is running",
    status: "success"
  }.to_json
end
