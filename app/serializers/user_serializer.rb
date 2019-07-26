class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  # def facts
  #   self.object.facts.map do |fact|
  #     {fact_id: fact.id,
  #       text: fact.text}
  # end
end
