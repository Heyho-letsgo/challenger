# encoding: utf-8
namespace :dev_data do
  desc "Fill database with sample data"
  task create: :environment do

    Challenge.delete_all
    Participation.delete_all
    User.delete_all


    john = User.create!(
        name:'John',
        email:'john@test.com'
    )
    paul = User.create!(
        name:'Paul',
        email:'paul@test.com'
    )

    cloche_pied = Challenge.create!(
        title:"Cloche-Pied",
        description:"Faites 200m à cloche-pied !",
        points:10,
        expires_at: Time.now + 1.week
    )
      cloche_pied.participations.create!(
          user_id: john.id,
          message:'Ok, mais ça fait mal au pied  !'
      )




    Challenge.create!(
        title:"Ornithorynque",
        description:"Utilise le mot Ornithorynque sur votre répondeur !",
        points:15,
        expires_at: Time.now + 10.days
    )
    Challenge.create!(
        title:'Bain Gelé',
        description:'Prendre un bain en décembre !',
        points:15,
        expires_at: Time.parse('31/12/2013'),
    )



puts '===> Sample data have been set in DB'


  end
end