class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

  has_many :spaces
  has_many :activities

  # def create_user(name, email, password)

  # end

  # def create_space(opt) # name, address1, address2, city, state, zip, description, comments, latitude, longitude)
  #   if opt
  #     space = self.spaces.create({opt})

  #     space = self.spaces.new
  #     space.name = opt['name']
  #     space.address1 = opt['address1']
  #     space.address2 = opt['address2']
  #     space.city = opt['city']
  #     space.state = opt['state']
  #     space.zip = opt['zip']
  #     space.description = opt['description']
  #     space.comments = opt['comments']
  #     space.latitude = opt['latitude']
  #     space.longitude = opt['longitude']

  #     # Not sure which one we will use:
  #     space.capacity_id = opt['capacity']

  #     # capacity_id = Capacity.where(capacity: opt['capacity'])
  #     # space.capacity = capacity_id

  #     space.save

  #   end
  # end


  # def create_activity(opt = {})
  #   if opt
  #     act = self.activities.new
  #     act.name = opt['name']
  #     act.description = opt['description']
  #     act.comments = opt['comments']


  #     # Not sure which one we will use:
  #     act.capacity_id = opt['capcity']

  #     # capacity_id = Capacity.where(capacity: opt['capacity'])
  #     # space.capacity = capacity_id
  #   end
  # end




  # # def create_event(opt)
  # #   if opt
  # #     event = self.events.new
  # #     event.date = opt['date']
  # #     event.start_time = opt['start_time']
  # #     event.end_time = opt['end_time']

  # #     event.save

  # #   end

  # # end

end
