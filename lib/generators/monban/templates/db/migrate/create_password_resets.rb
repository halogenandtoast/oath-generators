class CreatePasswordResets < ActiveRecord::Migration[<%= ActiveRecord::Migration.current_version %>]
  def change
    create_table :password_resets do |t|
      t.belongs_to :user, index: true
      t.string :token

      t.timestamps
    end
  end
end
