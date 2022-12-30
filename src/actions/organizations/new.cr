class Organizations::New < BrowserAction
  get "/organizations/new" do
    html NewPage, operation: SaveOrganization.new
  end
end
