class Organizations::IndexPage < MainLayout
  needs organizations : OrganizationQuery
  quick_def page_title, "All Organizations"

  def content
    h1 "All Organizations"
    link "New Organization", to: Organizations::New
    render_organizations
  end

  def render_organizations
    ul do
      organizations.each do |organization|
        li do
          link organization.name, Organizations::Show.with(organization)
        end
      end
    end
  end
end
