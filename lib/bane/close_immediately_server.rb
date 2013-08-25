module Bane
  module  Behaviors
    # Closes the connection immediately after a connection is made.
    class CloseImmediately < BehaviorServer
      def initialize(port)
      end

      def serve(io)
        # do nothing
      end

      def self.inherited(clazz)
        ServiceRegistry.register(clazz)
      end

      def self.simple_name
        self.name.split("::").last
      end
    end
  end
end
