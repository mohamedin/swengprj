# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090522191421) do

  create_table "applicants", :force => true do |t|
    t.string   "Name"
    t.string   "Address"
    t.string   "TelephoneNumber"
    t.string   "EMail"
    t.string   "LoginName"
    t.string   "Password"
    t.string   "BillingAddress"
    t.string   "ShippingAddress"
    t.string   "CreditNumber"
    t.string   "SecuirtyNumber"
    t.string   "DesieredPosition"
    t.string   "CurrentPosition"
    t.string   "Education"
    t.text     "Experience"
    t.text     "Notes"
    t.date     "DateOfBirth"
    t.integer  "Gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applications", :force => true do |t|
    t.integer  "applicant_id"
    t.integer  "job_oppertunity_id"
    t.datetime "SendingDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "Code"
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "Name"
    t.string   "Address"
    t.string   "TelephoneNumber"
    t.string   "EMail"
    t.string   "LoginName"
    t.string   "Password"
    t.string   "BillingAddress"
    t.string   "ShippingAddress"
    t.string   "CreditNumber"
    t.string   "SecuirtyNumber"
    t.integer  "Type"
    t.string   "Fax"
    t.string   "ContactPersonName"
    t.string   "TaxsNumber"
    t.string   "BussinessName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_oppertunities", :force => true do |t|
    t.string   "JobTitle"
    t.integer  "Salary"
    t.string   "Department"
    t.text     "Description"
    t.text     "Prequisites"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keywords", :force => true do |t|
    t.string   "Word"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_model_id"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "Quantity"
    t.decimal  "ItemPrice"
    t.decimal  "Taxs"
    t.decimal  "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_model_id"
  end

  create_table "orders", :force => true do |t|
    t.datetime "OrderDate"
    t.integer  "ConfimationNumber"
    t.integer  "OrderStatus"
    t.decimal  "TotalPrice"
    t.integer  "PaymentMethod"
    t.integer  "PurchaseNumber"
    t.decimal  "ShippingCosts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", :force => true do |t|
    t.integer  "PermissionType"
    t.string   "Page"
    t.string   "Module"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "product_models", :force => true do |t|
    t.integer  "Serial"
    t.string   "Name"
    t.integer  "Price"
    t.float    "Discount"
    t.boolean  "IsSpecialOffer"
    t.integer  "Rate"
    t.text     "Description"
    t.text     "Features"
    t.string   "ImageURL"
    t.integer  "QuantityOnHand"
    t.integer  "ReorderPoint"
    t.string   "Size"
    t.text     "SalesPackageContent"
    t.string   "RelatedDocumentURL"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "Code"
    t.string   "Name"
    t.text     "Description"
    t.string   "ImageURL"
    t.string   "KeyWords"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated\n_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "Name"
    t.string   "Address"
    t.string   "TelephoneNumber"
    t.string   "EMail"
    t.string   "LoginName"
    t.string   "Password"
    t.string   "BillingAddress"
    t.string   "ShippingAddress"
    t.string   "CreditNumber"
    t.string   "SecuirtyNumber"
    t.integer  "LevelOfAuthority"
    t.integer  "Type"
    t.string   "JobTitle"
    t.date     "HiringDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
