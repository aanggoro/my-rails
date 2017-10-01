class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      # field article w
      t.string :title,    limit: 20 # field title type string limit 20
      t.text   :body                # field body type text

      t.timestamps
    end
  end
end
