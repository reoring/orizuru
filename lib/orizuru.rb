require "orizuru/version"
require "orizuru/client"

require "faraday"
require "faraday_middleware"

module Orizuru
  def self.create(url, token)
    conn = Faraday::Connection.new(:url => url) do |builder|
      builder.use Faraday::Request::UrlEncoded  # リクエストパラメータを URL エンコードする
      builder.use Faraday::Response::Logger     # リクエストを標準出力に出力する
      builder.use Faraday::Adapter::NetHttp     # Net/HTTP をアダプターに使う
      builder.use FaradayMiddleware::EncodeJson

      builder.use FaradayMiddleware::ParseJson, :content_type => /\bjson$/
      builder.use FaradayMiddleware::Instrumentation
    end

    conn.authorization :Bearer, token
    conn.response :json

    Orizuru::Client.new(conn)
  end
end
