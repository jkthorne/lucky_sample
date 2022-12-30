class CreateOrganizations::V20221230181256 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Organization) do
      primary_key id : Int64
      add_timestamps
      add_belongs_to user : User, on_delete: :cascade
      add name : String
    end
  end

  def rollback
    drop table_for(Organization)
  end
end
