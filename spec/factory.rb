require 'factory_girl_rails'
require 'spec_helper'

Factory.define :user do |user|
  user.name "Name and Surname"
  user.email "example@example.com"
end