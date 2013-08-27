module Bane
  module  Servers
    # Sends a static response.
    #
    # Options:
    #   - message: The response message to send. Default: "Hello, world!"
    class FixedResponse < BehaviorServer
      include Behaviors::BasicBehavior

      def initialize(port, host = BehaviorServer::DEFAULT_HOST, options = {})
        super(port, self, host)
        @options = {:message => "Hello, world!"}.merge(options)
      end

      def serve(io)
        io.write @options[:message]
      end
    end
  end
end
