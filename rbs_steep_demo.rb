# frozen_string_literal: true

# Demo (lack of) type narrowing
class RBSSteepDemo
  def add_one
    return if maybe_number.nil?

    maybe_number + 1
  end

  private

  def maybe_number
    3
  end
end
