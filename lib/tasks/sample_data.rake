namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Andy Phil", phone:"0988", phone_confirmation:"0988", mode:"admin", pass_course:false)
    admin.toggle!(:admin)
    us = User.create!(name: "Yo Yo", phone:"0977", phone_confirmation:"0977", mode:"normal", pass_course:false)
  end
end
