class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :facts

  # def facts
  #   self.object.facts.map do |fact|
  #     {fact_id: fact.id,
  #       text: fact.text}
  # end
end
