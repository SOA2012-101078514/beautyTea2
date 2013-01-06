class User < ActiveRecord::Base
  attr_accessor :mode, :name, :phone


  validates_presence_of :phone, :on => :create
  validates_presence_of :name

end
