module Bane
  module Servers
    # Accepts a connection and never sends a byte of data.  The connection is
    # left open indefinitely.
    class NeverRespond < BehaviorServer
      include Behaviors::BasicBehavior

      def initialize(port, host = BehaviorServer::DEFAULT_HOST)
        super(port, self, host)
      end

      def serve(io)
        loop { sleep 1 }
      end
    end
  end
end
