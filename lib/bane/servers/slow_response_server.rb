module Bane
  module Servers

    # Sends a fixed response character-by-character, pausing between each character.
    #
    # Options:
    #  - message: The response to send. Default: "Hello, world!"
    #  - pause_duration: The number of seconds to pause between each character. Default: 10 seconds
    class SlowResponse < BehaviorServer
      include Behaviors::BasicBehavior

      def initialize(port, host = BehaviorServer::DEFAULT_HOST, options = {})
        super(port, self, host)
        @options = {:message => "Hello, world!", :pause_duration => 10}.merge(options)
      end

      def serve(io)
        message = @options[:message]
        pause_duration = @options[:pause_duration]

        message.each_char do |char|
          io.write char
          sleep pause_duration
        end
      end
    end
  end
end
