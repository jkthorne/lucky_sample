class Organizations::Create < BrowserAction
  post "/organizations" do
    SaveOrganization.create(params) do |operation, organization|
      if organization
        flash.success = "The record has been saved"
        redirect Show.with(organization.id)
      else
        flash.failure = "It looks like the form is not valid"
        html NewPage, operation: operation
      end
    end
  end
end
