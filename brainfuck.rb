require "rubygems"
require "treetop"
module Brainfuck
  class Interpreter
    attr_accessor :slots, :pos
    def initialize(code)
      @slots = [0] * 3000
      @pos = 0

      Treetop.load "brainfuck"
      p = BrainfuckParser.new

      p.parse(code).run(self)
    rescue => e
      raise e
    end
    def get
      r = STDIN.getc
      i = r
      while i != 10
        i = STDIN.getc
      end
      r
    end
  end
end
