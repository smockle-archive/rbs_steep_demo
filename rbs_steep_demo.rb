# frozen_string_literal: true

# Demo (lack of) type narrowing
class RBSSteepDemo
  def initialize(maybe_number)
    @maybe_number = maybe_number
  end

  def add_one
    return if @maybe_number.nil?

    @maybe_number + 1
  end
end
