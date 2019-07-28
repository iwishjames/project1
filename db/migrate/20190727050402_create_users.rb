class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :role
      t.text :student_class
      t.text :mentor_class
      t.text :image
      t.date :start_date
      t.text :network_github
      t.text :network_linkedin
      t.text :network_twitter

      t.timestamps
    end
  end
end
