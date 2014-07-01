require 'rubygems'
require 'treetop'

Treetop.load "lib/brainfuck"

module Brainfuck
  class Interpreter

    def initialize(code)
      code = code.gsub(/\s+/,'')
      BrainfuckParser.new.parse(code).run
    end

  end
end
