require_relative 'connection'

ActiveRecord::Schema.define do
  create_table :tasks, force: :cascade do |t|
    t.string :name
    t.text   :description
  end
end