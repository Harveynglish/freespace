# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'katbe@example.com',
            password: 'foobarfoo',
            name: 'Kat Be',
            is_admin: true
            )

User.create(email: 'lora@example.com',
            password: 'foobarfoo',
            name: 'Lora Abe',
            is_admin: true
            )

User.create(email: 'taaha@example.com',
            password: 'foobarfoo',
            name: 'Taaha Chaudhry',
            is_admin: false
            )

User.create(email: 'patrick@example.com',
            password: 'foobarfoo',
            name: 'Patrick Brennan',
            is_admin: false
            )

User.create(email: 'jester@example.com',
            password: 'foobarfoo',
            name: 'Jester King',
            is_admin: false
            )

Activity.create(user_id: 2,
                name: 'Hula hooping',
                description: 'Spinning our LED hoops together and swapping tricks',
                capacity: 10,
                comments: 'This is an activity that I\'m finding a space for.'
                )

Event.create(space_id: 3,
             activity_id: 1,
             start_time: DateTime.now,
             end_time: DateTime.now + 1.hour
             )

Activity.create(user_id: 3,
                name: 'Pottery class',
                description: 'We\'ll be learning how to make beautiful pottery',
                capacity: 25,
                comments: 'This is an activity that I\'m finding a space for.'
                )

Event.create(space_id: 2,
             activity_id: 2,
             start_time: DateTime.now + 18.hours,
             end_time: DateTime.now + 22.hours
             )

Activity.create(user_id: 3,
                name: 'Swing dancing',
                description: 'Dancing around the dance floor together!',
                capacity: 75,
                comments: 'This is an activity that I\'m finding a space for.'
                )

Event.create(space_id: 1,
             activity_id: 3,
             start_time: DateTime.now + 2.hours,
             end_time: DateTime.now + 7.hours
             )

Event.create(activity_id: 3,
             start_time: DateTime.new(2014,06,01,19,00,00),
             end_time: DateTime.new(2014,06,02,03,30,00)
             )

Space.create(user_id: 2,
             name: "McGarrah Jessee building",
             address1: "800 Congress Ave",
             address2: "Ste 100",
             city: "Austin",
             state: "Texas",
             zip: "15213",
             description: "This is a large abandoned building downtown that can be used for large  gatherings and events.",
             capacity: 50,
             comments: "This could be good for the swing dancing event.",
             latitude: 30.2710,
             longitude: 97.4730,
             available_all_hours: false
             )

Space.create(user_id: 3,
             name: "Abandoned building downtown",
             address1: "500 Congress Ave",
             address2: "Ste 200",
             city: "Austin",
             state: "Texas",
             zip: "15215",
             description: "This is an abandoned building downtown that can be used for large gatherings  and events.",
             capacity: 100,
             comments: "This could be good for the pottery event.",
             latitude: 30.3710,
             longitude: 97.7730,
             available_all_hours: false
             )

Space.create(user_id: 2,
             name: "Zilker Park",
             address1: "Barton Springs Rd",
             address2: "",
             city: "Austin",
             state: "Texas",
             zip: "15217",
             description: "This is a great open grassy space right by the river.",
             capacity: 15,
             comments: "This could be good for the hula hooping event.",
             latitude: 30.7710,
             longitude: 97.9730,
             available_all_hours: false
             )

Space.create(user_id: 5,
             name: "The North Door",
             capacity: 184,
             available_all_hours: true)

AvailableTime.create(space_id: 1,
                     day_id: 1,
                     start_time: 1100,
                     end_time: 1900,
                     )

AvailableTime.create(space_id: 3,
                     day_id: 3,
                     start_time: 1800,
                     end_time: 0130,
                     )

AvailableTime.create(space_id: 2,
                     day_id: 4,
                     start_time: 0730,
                     end_time: 1100,
                     )

AvailableDateRange.create(space_id: 1,
                          start_date: Date.new(2014,6,1),
                          end_date: Date.new(2014,10,12)
                          )
AvailableDateRange.create(space_id: 2,
                          start_date: Date.new(2014,5,27),
                          end_date: Date.new(2014,7,01)
                          )
AvailableDateRange.create(space_id: 3,
                          start_date: Date.new(2014,6,1),
                          )
AvailableDateRange.create(space_id: 4,
                          start_date: Date.new(2014,5,1),
                          )












