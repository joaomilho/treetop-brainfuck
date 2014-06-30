BF = {
  :a => '++[>++[>++[>++[>++[>+++<-] <-] <-] <-] <-]  >>>>>+. ',
  :b => '++[>+++++++[>+++++++<-] <-]  >>. ',
  :z => '++[>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++<-]  >. ',
  :hello_brainfuck => '++[>++[>++[>++[>++<-] <-] <-] <-]  >>>><+++[>++++++++++++++++++++++++<-] >. <++[>-<-] >-. <+++[>++<-] >+. . <++[>+<-] >+. <+++++++++++++[>------<-] >-. <+++++++++++[>++++++<-] >. <++[>++++++++<-] >. <++[>--------<-] >-. <++[>++++<-] >. <++[>++<-] >+. <++[>----<-] >. <+++++[>+++<-] >. <+++[>------<-] >. <++[>++++<-] >. '
}
require_relative '../lib/brainfuck'
require 'stringio'

describe Brainfuck do

  before do
    @result = String.new
    $stdout = StringIO.new(@result)
  end

  subject(:result){ @result }

  context "a" do
    before{ Brainfuck::Interpreter.new(BF[:a]) }

    it{ should == 'a' }
  end

  context "b" do
    before{ Brainfuck::Interpreter.new(BF[:b]) }

    it{ should == 'b' }
  end

  context "z" do
    before{ Brainfuck::Interpreter.new(BF[:z]) }

    it{ should == 'z' }
  end

  context "hello brainfuck" do
    before{ Brainfuck::Interpreter.new(BF[:hello_brainfuck]) }

    it{ should == 'hello brainfuck' }
  end
end
