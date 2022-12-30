class Organizations::NewPage < MainLayout
  needs operation : SaveOrganization
  quick_def page_title, "New Organization"

  def content
    h1 "New Organization"
    render_organization_form(operation)
  end

  def render_organization_form(op)
    form_for Organizations::Create do
      # Edit fields in src/components/organizations/form_fields.cr
      mount Organizations::FormFields, op

      submit "Save", data_disable_with: "Saving..."
    end
  end
end
