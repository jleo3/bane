module Bane
  module Servers
    # Sends a random response.
    class RandomResponse < BehaviorServer
      include Behaviors::BasicBehavior

      def initialize(port, host = BehaviorServer::DEFAULT_HOST)
        super(port, self, host)
      end

      def serve(io)
        io.write random_string
      end

      private
      def random_string
        (1..rand(26)+1).map { |i| ('a'..'z').to_a[rand(26)] }.join
      end

    end
  end
end
