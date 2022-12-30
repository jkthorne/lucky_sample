class Organization < BaseModel
  table do
    column name : String
    belongs_to owner : User, foreign_key: :user_id
  end
end
