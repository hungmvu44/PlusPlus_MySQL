import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  port="3306",
  user="root",
  password="Hungmanh94",
  database="product_orders_plusplus"
)
class Order_Details:
  def __init__(self, orderDate, requiredDate, status):
    self.orderDate = orderDate
    self.requiredDate = requiredDate
    self.status = status
  def __str__(self):
    return f"orderDate :%s ,requiredDate :%s, status: %s" % (self.orderDate, self.requiredDate, self.status)

def GetOrder():
  str = "select orderDate, requiredDate, `status` from orders WHERE orderDate >= '2003-03-01' and orderDate <= '2003-03-31' "
  mycursor = mydb.cursor()
  mycursor.execute(str)
  myresult = mycursor.fetchall()
  order_list = []
  for x in myresult:
    Detail = Order_Details(x[0], x[1], x[2])
    order_list.append(Detail)
  print(order_list)
  for x in order_list:
    print(x)

GetOrder()

class Product_Name:
  def __init__(self, productCode, status, orderNumber ):
    self.productCode = productCode
    self.status = status
    self.orderNumber = orderNumber
  def __str__(self):
    return f"productCode :%s ,status :%s, orderNumber: %s" % (self.productCode, self.status , self.orderNumber)

def Order_Cancelled():
  str = "Select p.productCode, o.status, od.orderNumber from products as p  JOIN order_details as od  ON p.productCode = od.productCode JOIN orders as o ON o.orderNumber = od.orderNumber WHERE o.status = 'Cancelled'"
  mycursor = mydb.cursor()
  mycursor.execute(str)
  myresult = mycursor.fetchall()
  order_list = []
  for x in myresult:
    Cancel = Product_Name(x[0], x[1], x[2])
    order_list.append(Cancel)
  print(order_list)
  for x in order_list:
    print(x)

Order_Cancelled()