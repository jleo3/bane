module Bane
  module Servers
    class FixedResponseForEachLine < FixedResponse
      include Behaviors::ForEachLine
    end

  end
end
