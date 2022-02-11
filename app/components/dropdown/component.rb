module Dropdown
  require "ostruct"

  class Component < ViewComponent::Base
    def initialize(items)
      @title="Actions"
      @items = items.map { |item| OpenStruct.new(item) }
    end

    def render?
      true
    end
  end
end
