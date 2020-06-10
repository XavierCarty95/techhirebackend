class JobSerializer < ActiveModel::Serializer
  attributes :id, :name, :role, :description, :work_type, :location , :applications, :users
  has_one :company
  has_many :applications
  has_many :users
end
