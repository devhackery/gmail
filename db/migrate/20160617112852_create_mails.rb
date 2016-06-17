class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.string :email_id
      t.string :body

      t.timestamps
    end
  end
end
