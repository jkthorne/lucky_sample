class Organizations::Index < BrowserAction
  get "/organizations" do
    html IndexPage, organizations: OrganizationQuery.new
  end
end
