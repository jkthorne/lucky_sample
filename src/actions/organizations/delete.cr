class Organizations::Delete < BrowserAction
  delete "/organizations/:organization_id" do
    organization = OrganizationQuery.find(organization_id)
    DeleteOrganization.delete(organization) do |_operation, _deleted|
      flash.success = "Deleted the organization"
      redirect Index
    end
  end
end
