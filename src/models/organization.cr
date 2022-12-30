class Organization < BaseModel
  table do
    column name : String
    belongs_to owner : User
  end
end
