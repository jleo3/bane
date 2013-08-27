module Bane
  module Servers

    # Sends a newline character as the only response 
    class NewlineResponse < BehaviorServer
      def serve(io)
        io.write "\n"
      end
    end
  end
end
