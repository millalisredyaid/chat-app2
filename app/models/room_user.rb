class RoomUser < ApplicationRecord
  belongs_to :user
  belongs_to :room
  
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  validates :name, presence: true
end   

# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable


