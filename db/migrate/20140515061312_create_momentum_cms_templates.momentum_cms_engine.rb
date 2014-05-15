# This migration comes from momentum_cms_engine (originally 20140425223933)
class CreateMomentumCmsTemplates < ActiveRecord::Migration
  def change
    create_table :momentum_cms_templates do |t|
      t.string :label
      t.references :site, index: true
      t.text :content
      t.text :js
      t.text :css
      t.string :ancestry

      t.boolean :permanent_record, default: false

      t.timestamps
    end
  end
end