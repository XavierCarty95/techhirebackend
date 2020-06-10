class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :website, :about
end
