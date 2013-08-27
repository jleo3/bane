module Bane
  module Servers

    class SlowResponseForEachLine < SlowResponse
      include Behaviors::ForEachLine
    end
  end
end
