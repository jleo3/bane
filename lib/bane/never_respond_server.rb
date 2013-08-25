module Bane
  module Behaviors
    # Accepts a connection and never sends a byte of data.  The connection is
    # left open indefinitely.
    class NeverRespond < BasicBehavior
      def serve(io)
        loop { sleep 1 }
      end
    end
  end
end
