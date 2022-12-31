class SaveOrganization < Organization::SaveOperation
  permit_columns name, owner_id

  def user_id
    owner_id
  end
end
