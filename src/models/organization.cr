class Organization < BaseModel
  table do
    column name : String
    belongs_to owner : User # , foreign_key: :owner_id
  end

  def user_id
    owner_id
  end
end
