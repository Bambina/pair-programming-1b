# encoding: utf-8

require 'rubygems'
require 'rspec'
require "#{File.dirname(__FILE__)}/calendar"

describe Calendar do
  it "should return a blank string for nil input" do
    Calendar.convert(nil).should == nil
  end
  
  it "should work for today" do
    Calendar.convert("2012-10-20").should == "平成24年10月20日"
  end

it "should work for Showa dates (natsukashii)" do
  Calendar.convert("1979-08-08").should == "昭和54年08月08日"
end
end

