module Bane
  module Servers

    class DelugeResponseForEachLine < DelugeResponse
      include Behaviors::ForEachLine
    end
  end
end
