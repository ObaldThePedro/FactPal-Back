class LikeSerializer < ActiveModel::Serializer
  attributes :id, :fact, :user
  
  def properties
    {fact_id: self.object.fact.id,
    user_email: self.object.user.email}
  end
end
