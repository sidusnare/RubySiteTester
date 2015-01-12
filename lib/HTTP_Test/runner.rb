require 'net/http'
require 'uri'

module HTTP_Test
  class Runner
    def initialize(host, ip, port, path, ssl, test, valid, invalid)
      @host = host
      @ip = ip
      @port = port
      @ssl = ssl
      @test = test
      @valid = valid
      @invalid = invalid
      @path = path
      @finish = false
      @pass = false
    end
    def to_s
      "Running on #{@host}"
    end
  end
end
