class OrganizationQuery < Organization::BaseQuery
end

class Organization::BaseQuery
  def user_id(*args)
    owner_id(*args)
  end
end
