# encoding: utf-8
namespace :dev_data do
  desc "Fill database with sample data"
  task create: :environment do

    Challenge.delete_all
    Challenge.create!(
        title:"Cloche-Pied",
        description:"Faites 200m à cloche-pied !",
        points:10,
        expires_at: Time.now + 1.week
    )
puts "===> Sample data have been set in DB"


  end
end