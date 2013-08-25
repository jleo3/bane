module Bane
  module  Behaviors
    # Sends a static response.
    #
    # Options:
    #   - message: The response message to send. Default: "Hello, world!"
    class FixedResponse < BehaviorServer

      def initialize(options = {})
        @options = {:message => "Hello, world!"}.merge(options)
      end

      def serve(io)
        io.write @options[:message]
      end
    end
  end
end
