class Posts < ActiveRecord::Migration[5.2]
    def change
      create_table :posts do | t |
        t.string :comment
        # t.integer :user_id
        t.references :user, foreign_key: true
        t.timestamps
      end
    end
end