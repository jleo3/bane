module Bane
  module Behaviors

    class SlowResponseForEachLine < SlowResponse
      include ForEachLine
    end
  end
end
