require 'rubygems'
require 'treetop'
module Brainfuck
  class Interpreter
#    attr_accessor :slots, :pos
#      @slots = [0] * 3000
#      @pos = 0
    def initialize(code)
      Treetop.load "brainfuck"
      p = BrainfuckParser.new
      p.parse(code.gsub(/\s+/,'')).run #(self)
    end
  end
end
