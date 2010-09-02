BF = {
  :a => '++[>++[>++[>++[>++[>+++<-] <-] <-] <-] <-]  >>>>>+. ',
  :b => '++[>+++++++[>+++++++<-] <-]  >>. ',
  :z => '++[>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++<-]  >. ',
  :hello_brainfuck => '++[>++[>++[>++[>++<-] <-] <-] <-]  >>>><+++[>++++++++++++++++++++++++<-] >. <++[>-<-] >-. <+++[>++<-] >+. . <++[>+<-] >+. <+++++++++++++[>------<-] >-. <+++++++++++[>++++++<-] >. <++[>++++++++<-] >. <++[>--------<-] >-. <++[>++++<-] >. <++[>++<-] >+. <++[>----<-] >. <+++++[>+++<-] >. <+++[>------<-] >. <++[>++++<-] >. '
}
require 'brainfuck'
#require 'test/zentest_assertions'
require 'stringio'

describe Brainfuck do
  it "should run a" do
    result = String.new
    $stdout = StringIO.new(result)
    Brainfuck::Interpreter.new(BF[:a])
    result.should == 'a'
  end
  it "should run b" do
    result = String.new
    $stdout = StringIO.new(result)
    Brainfuck::Interpreter.new(BF[:b])
    result.should == 'b'
  end
  it "should run z" do
    result = String.new
    $stdout = StringIO.new(result)
    Brainfuck::Interpreter.new(BF[:z])
    result.should == 'z'
  end
  it "should run hello brainfuck" do
    result = String.new
    $stdout = StringIO.new(result)
    Brainfuck::Interpreter.new(BF[:hello_brainfuck])
    result.should == 'hello brainfuck'
  end
end
