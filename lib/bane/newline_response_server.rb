module Bane
  module Behaviors

    # Sends a newline character as the only response 
    class NewlineResponse < BasicBehavior
      def serve(io)
        io.write "\n"
      end
    end
  end
end
