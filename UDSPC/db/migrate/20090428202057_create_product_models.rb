class CreateProductModels < ActiveRecord::Migration
  def self.up
    create_table :product_models do |t|
      t.integer :Serial
      t.string :Name
      t.integer :Price
      t.float :Discount
      t.boolean :IsSpecialOffer
      t.integer :Rate
      t.text :Description
      t.text :Features
      t.string :ImageURL
      t.integer :QuantityOnHand
      t.integer :ReorderPoint
      t.string :Size
      t.text :SalesPackageContent
      t.string :RelatedDocumentURL
      t.integer :Product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_models
  end
end
