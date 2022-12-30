class Organizations::FormFields < BaseComponent
  needs operation : SaveOrganization

  def render
    mount Shared::Field, operation.name, &.text_input(autofocus: "true")
  end
end
