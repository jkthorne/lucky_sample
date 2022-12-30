class Organizations::Show < BrowserAction
  get "/organizations/:organization_id" do
    html ShowPage, organization: OrganizationQuery.find(organization_id)
  end
end
