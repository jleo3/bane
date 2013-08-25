module Bane

  module Behaviors

    class BasicBehavior
      def self.included(clazz)
        ServiceRegistry.register(clazz)
      end

      def self.simple_name
        self.name.split("::").last
      end
    end

    # This module can be used to wrap another behavior with
    # a "while(io.gets)" loop, which reads a line from the input and
    # then performs the given behavior.
    module ForEachLine
      def serve(io)
        while (io.gets)
          super(io)
        end
      end
    end

  end
end

