#encoding: utf-8

Given /^a login form that is (\d+) cm long$/ do |length| 

@cucumber = {:color => 'green', :length => length.to_i}

end 

When /^I (?:cut|chop) (?:it|the login form) in (?:halves|half|two)$/ do

  @choppedCucumbers = [ 

  {:color => @cucumber[:color], :length => @cucumber[:length] / 2}, 

  {:color => @cucumber[:color], :length => @cucumber[:length] / 2} 

  ]

end

When /^I have two login forms$/ do 

  @choppedCucumbers.length.should == 2

end 

And /^both are (\d+) cm long$/ do |length| 

  @choppedCucumbers.each do |cuke|

    cuke[:length].should == length.to_i 
  end

end
