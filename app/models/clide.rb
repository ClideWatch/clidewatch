class Clide < ActiveRecord::Base
  attr_accessible :colaboration, :community, :floss, :hosted, :memory_hi, :memory_lo, :name, :private, :source, :space_hi, :space_lo, :ssh, :ssl, :sudo, :url
end