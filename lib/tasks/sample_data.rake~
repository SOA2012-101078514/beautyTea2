namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Andy Phil", phone:"0988", phone_confirmation:"0988", mode:"admin", pass_course:false)
    admin.toggle!(:admin)
    us = User.create!(name: "Yo Yo", phone:"0977", phone_confirmation:"0977", mode:"normal", pass_course:false)
    post1 = Bulletin.create!(msg: "Special Workshop", date: "2012-10-20", deadline: "2012-11-01" )
    post1 = Bulletin.create!(msg: "New Course Soon", date: "2012-12-16", deadline: "2013-01-14" )
  end
end
