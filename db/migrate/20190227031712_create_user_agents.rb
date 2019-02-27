class CreateUserAgents < ActiveRecord::Migration
  def change
    create_table :user_agents do |t|
      t.string :name
      t.integer :counter, :default => 0

      t.timestamps null: false
    end
  end
end
