class Organizations::Update < BrowserAction
  put "/organizations/:organization_id" do
    organization = OrganizationQuery.find(organization_id)
    SaveOrganization.update(organization, params) do |operation, updated_organization|
      if operation.saved?
        flash.success = "The record has been updated"
        redirect Show.with(updated_organization.id)
      else
        flash.failure = "It looks like the form is not valid"
        html EditPage, operation: operation, organization: updated_organization
      end
    end
  end
end
