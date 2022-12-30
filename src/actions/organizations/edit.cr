class Organizations::Edit < BrowserAction
  get "/organizations/:organization_id/edit" do
    organization = OrganizationQuery.find(organization_id)
    html EditPage,
      operation: SaveOrganization.new(organization),
      organization: organization
  end
end
