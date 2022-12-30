# lucky_sample

This is a sample project to test features and bugs

# Goals

## Signin flow creates a user associated with an organization
I think this should be added to after save in `src/operations/sign_up_user.cr`

## On failure both user and organization are not persisted in the database
This can be done by calling `database.rollback` in `after_save` but not `before_save`

## Form contains all fields in the operation
Forms for adding organizations should be able to be added at `src/pages/sign_ups/new_page.cr`
