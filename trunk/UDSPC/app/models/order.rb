class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_items
  def getStatusDesc
    if self.OrderStatus == 0
      return "In Progress"
    elsif self.OrderStatus == 1
      return "Completed"
    elsif self.OrderStatus == 2
      return "Canceled"
    end
  end
  
  def getStatuses
    return [["In Progress",0],["Completed",1],["Canceled",2]]
  end
end
