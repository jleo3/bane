require 'gserver'
require 'logger'

module Bane
  class BehaviorServer < TCPServer
    attr_writer :stdlog

    ALL_INTERFACES = "0.0.0.0"
    DEFAULT_HOST = "127.0.0.1"

    def initialize(port, behavior, host = BehaviorServer::DEFAULT_HOST)
      super(host, port)
      @behavior = behavior
      # I guess we'll have to manage our own auditing, 
      # if hooking into the callbacks is indeed possible
      #self.audit = true
    end

    def serve(io)
      @behavior.serve(io)
    end

    def to_s
      "<Bane::BehaviorServer: port=#{@port}, behavior=#{@behavior.class}>"
    end

    def stdlog(logger)
      @logger = logger
    end
    
    protected

    def log(message)
      LOGGER.info "#{@behavior.class.simple_name} #{@host}:#{@port} #{message}"
    end

    def connecting(client)
      addr = client.peeraddr
      log("client:#{addr[1]} #{addr[2]}<#{addr[3]}> connect")
    end

    def disconnecting(client_port)
      log("client:#{client_port} disconnect")
    end

    def starting()
      log("start")
    end

    def stopping()
      log("stop")
    end
  end
end
