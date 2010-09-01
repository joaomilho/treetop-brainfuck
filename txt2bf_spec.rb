BF = {
  :a => '++[>++[>++[>++[>++[>+++<-] <-] <-] <-] <-]  >>>>>+. ',
  :b => '++[>+++++++[>+++++++<-] <-]  >>. ',
  :z => '++[>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++<-]  >. ',
  :hello_brainfuck => '++[>++[>++[>++[>++<-] <-] <-] <-]  >>>><+++[>++++++++++++++++++++++++<-] >. <++[>-<-] >-. <+++[>++<-] >+. . <++[>+<-] >+. <+++++++++++++[>------<-] >-. <+++++++++++[>++++++<-] >. <++[>++++++++<-] >. <++[>--------<-] >-. <++[>++++<-] >. <++[>++<-] >+. <++[>----<-] >. <+++++[>+++<-] >. <+++[>------<-] >. <++[>++++<-] >. '
}
require 'txt2bf'
describe Txt2Bf do
  it "should return a" do
    "a".to_bf.should == BF[:a]
  end
  it "should return a" do
    "b".to_bf.should == BF[:b]
  end
  it "should return z" do
    "z".to_bf.should == BF[:z]
  end
  it "should return hello brainfuck" do
    "hello brainfuck".to_bf.should == BF[:hello_brainfuck]
  end
end
