# encoding: utf-8
require 'spec/expectations'
$:.unshift(File.dirname(__FILE__) + '/../../lib') # This line is not needed in your own project
require 'cucumber/formatters/unicode'
require 'calculador'

Before do
  @calc = Calculador.new
end

After do
end

Given /he introducido (\d+)/ do |n|
  @calc.push n.to_i
end

When 'añado' do
  @result = @calc.add
end

Then /el resultado debe ser (\d*)/ do |result|
  @result.should == result.to_i
end
