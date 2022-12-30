class Organizations::ShowPage < MainLayout
  needs organization : Organization
  quick_def page_title, "Organization with id: #{organization.id}"

  def content
    link "Back to all Organizations", Organizations::Index
    h1 "Organization with id: #{organization.id}"
    render_actions
    render_organization_fields
  end

  def render_actions
    section do
      link "Edit", Organizations::Edit.with(organization.id)
      text " | "
      link "Delete",
        Organizations::Delete.with(organization.id),
        data_confirm: "Are you sure?"
    end
  end

  def render_organization_fields
    ul do
      li do
        text "name: "
        strong organization.name.to_s
      end
    end
  end
end
