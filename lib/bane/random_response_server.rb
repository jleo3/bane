module Bane
  module Behaviors
    # Sends a random response.
    class RandomResponse < BasicBehavior
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