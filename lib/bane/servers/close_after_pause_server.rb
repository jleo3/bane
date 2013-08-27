module Bane
  module Servers

    # Accepts a connection, pauses a fixed duration, then closes the connection.
    #
    # Options:
    #   - duration: The number of seconds to wait before disconnect.  Default: 30
    class CloseAfterPause < BehaviorServer
      def initialize(options = {})
        @options = {:duration => 30}.merge(options)
      end

      def serve(io)
        sleep(@options[:duration])
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
