class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :fact, :user
end
