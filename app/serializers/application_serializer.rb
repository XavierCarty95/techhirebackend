class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :job
  has_one :user
end
