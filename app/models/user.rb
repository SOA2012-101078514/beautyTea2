class User < ActiveRecord::Base
  attr_accessible :mode, :name, :pass_course, :phone, :phone_confirmation

  #attr_accessor :phone

  validates_confirmation_of :phone
  validates_presence_of :phone, :on => :create
  validates_presence_of :name
  validates_uniqueness_of :name
  
  def self.authenticate(name, phone)
    user = find_by_name(name)
    if user && user.phone == phone
      user
    else
      nil
    end
  end


end
