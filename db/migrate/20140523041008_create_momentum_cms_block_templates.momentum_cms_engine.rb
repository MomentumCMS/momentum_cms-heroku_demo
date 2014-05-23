# This migration comes from momentum_cms_engine (originally 20140507065635)
class CreateMomentumCmsBlockTemplates < ActiveRecord::Migration
  def change
    create_table :momentum_cms_block_templates do |t|
      t.references :template, index: true
      t.string :identifier
      t.string :block_type
      t.string :block_value_type
      
      t.timestamps
    end
  end
end
