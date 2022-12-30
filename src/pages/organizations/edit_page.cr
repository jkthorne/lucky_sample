class Organizations::EditPage < MainLayout
  needs operation : SaveOrganization
  needs organization : Organization
  quick_def page_title, "Edit Organization with id: #{organization.id}"

  def content
    link "Back to all Organizations", Organizations::Index
    h1 "Edit Organization with id: #{organization.id}"
    render_organization_form(operation)
  end

  def render_organization_form(op)
    form_for Organizations::Update.with(organization.id) do
      # Edit fields in src/components/organizations/form_fields.cr
      mount Organizations::FormFields, op

      submit "Update", data_disable_with: "Updating..."
    end
  end
end
