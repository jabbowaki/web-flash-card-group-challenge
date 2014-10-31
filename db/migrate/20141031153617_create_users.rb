class CreateUsers < ActiveRecord::Migration
  def change
    create_tables :users |t|
      t.string  :name
      t.string  :password

      t.timestamps
    end
  end
end
