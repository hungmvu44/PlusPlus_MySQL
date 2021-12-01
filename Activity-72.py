import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    port = "3306",
    user ="root",
    password = "Hungmanh94",
    database = "product_orders_plusplus"
)

class Products():
    def __init__(self, productCode, productName, totalOrder):
        self.productCode = productCode
        self.productName = productName
        self.totalOrder = totalOrder
    def __str__(self):
        return f"productCode: %s, productName: %s, totalOrder :%s  " % (self.productCode, self.productName, self.totalOrder)

def Products_Details():
    str = "select p.productCode, p.productName, od.quantityOrdered * od.priceEach as TotalOrder  from products as p JOIN order_details as od ON p.productCode = od.productCode"
    mycursor = mydb.cursor()
    mycursor.execute(str)
    result = mycursor.fetchall()
    list = []
    for x in result:
        ProductDetails  = Products_Details(x[0], x[1], x[2])
        list.append(ProductDetails)
    print(list)
    for x in list:
        print(x)

Products_Details()

