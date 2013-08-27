module Bane
  module Servers
    class RandomResponseForEachLine < RandomResponse
      include Behaviors::ForEachLine
    end
  end
end
