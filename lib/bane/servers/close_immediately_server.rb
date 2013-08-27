module Bane
  module Servers
    # Closes the connection immediately after a connection is made.
    class CloseImmediately < BehaviorServer
      include Behaviors::BasicBehavior

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
