// OP1: insertMany()
db.products.insertMany([
  {
    product_id: 1,
    name: "iPhone 14",
    category: "Electronics",
    price: 80000,
    specs: { warranty_years: 1, voltage: "220V" }
  },
  {
    product_id: 2,
    name: "T-Shirt",
    category: "Clothing",
    price: 1200,
    sizes: ["S", "M", "L", "XL"],
    material: "Cotton"
  },
  {
    product_id: 3,
    name: "Milk Packet",
    category: "Groceries",
    price: 50,
    expiry_date: new Date("2024-12-31"),
    nutrition: { fat: "3%", protein: "3.4g" }
  }
]);

// OP2: find Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() add discount
db.products.updateOne(
  { product_id: 1 },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex()
db.products.createIndex({ category: 1 });