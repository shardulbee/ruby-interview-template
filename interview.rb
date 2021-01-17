# typed: strict
require 'pry-byebug'

class Interview
  extend(T::Sig)

  sig { returns(Integer) }
  attr_reader :param_one, :param_two

  sig { params(param_one: Integer, param_two: Integer).void }
  def initialize(param_one, param_two)
    @param_one = param_one
    @param_two = param_two
  end

  sig { void }
  def to_s
    puts "one: #{param_one} two: #{param_two}"
  end
end
