class CreateExternalCredentials < ActiveRecord::Migration[<%= ActiveRecord::Migration.current_version %>]
  def change
    create_table :external_credentials do |t|
      t.string :uid
      t.string :provider
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
