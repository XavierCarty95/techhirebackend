class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :title, :linkedin, :image, :portfolio, :github, :resume, :skills, :phone_number, :jobs , :applications
  has_many :jobs
  has_many :applications
end
