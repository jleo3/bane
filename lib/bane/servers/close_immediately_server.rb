module Bane
  module Servers
    # Closes the connection immediately after a connection is made.
    class CloseImmediately < BehaviorServer
      include Behaviors::BasicBehavior

      def initialize(port, host)
        super(port, self, host)
      end

      def serve(io)
        # do nothing
      end
    end
  end
end
