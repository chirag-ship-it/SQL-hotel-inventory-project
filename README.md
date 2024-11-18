
# Hotel Inventory Management System

This project is a **SQL-based Hotel Inventory Management System** designed to maintain and manage the inventory of food and liquor items in a five-star hotel. The system tracks items, suppliers, inventory transactions, and purchase orders to ensure smooth operations and efficient inventory control.

---

## Table of Contents
1. [Overview](#overview)
2. [Features](#features)
3. [Database Schema](#database-schema)
4. [Setup Instructions](#setup-instructions)
5. [Usage](#usage)
6. [Sample Queries](#sample-queries)
7. [Future Enhancements](#future-enhancements)
8. [License](#license)

---

## Overview

The **Hotel Inventory Management System** enables efficient tracking of inventory levels, supply orders, and item usage. It ensures that inventory is maintained at optimal levels to meet customer demand while reducing waste and overstocking. 

The project uses **MySQL** for database management and is suitable for integration into larger hotel management systems.

---

## Features

- Maintain a list of food and liquor items with categories, stock levels, and reorder thresholds.
- Record and manage inventory transactions (supply and usage).
- Track purchase orders and supplier details.
- Ensure data integrity using primary and foreign key relationships.

---

## Database Schema

### 1. Items Table
Tracks all food and liquor items in the inventory.
- **Columns**: `ItemID`, `ItemName`, `Category`, `Unit`, `StockQuantity`, `ReorderLevel`

### 2. Suppliers Table
Stores supplier details for inventory procurement.
- **Columns**: `SupplierID`, `SupplierName`, `ContactNumber`, `Email`, `Address`

### 3. Inventory Transactions Table
Records inventory usage and supply transactions.
- **Columns**: `TransactionID`, `ItemID`, `TransactionType`, `Quantity`, `TransactionDate`

### 4. Purchase Orders Table
Manages purchase orders for inventory items.
- **Columns**: `OrderID`, `ItemID`, `SupplierID`, `OrderQuantity`, `OrderDate`, `DeliveryDate`

---

## Setup Instructions

### Prerequisites
- Install [MySQL](https://dev.mysql.com/downloads/installer/) on your local machine or use a cloud-based database platform.
- A MySQL client like [MySQL Workbench](https://www.mysql.com/products/workbench/) or a code editor with database integration.

### Steps
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/your-username/hotel-inventory-management.git
   cd hotel-inventory-management
   ```
2. Open the SQL script files in your preferred MySQL client.
3. Execute the SQL scripts in the following order:
   - `items.sql`: Creates and populates the `Items` table.
   - `suppliers.sql`: Creates and populates the `Suppliers` table.
   - `inventory_transactions.sql`: Creates and populates the `InventoryTransactions` table.
   - `purchase_orders.sql`: Creates and populates the `PurchaseOrders` table.

---

## Usage

### Initial Data
- **Food Items**: Rice, Chicken, Wheat Flour, Eggs, Milk, Butter, Vegetables
- **Liquor Items**: Whiskey, Beer, Vodka, Wine, Tequila, Rum, Gin

### Functions
1. **Add new items to the inventory**:
   - Add food or liquor items with stock levels and reorder thresholds.
2. **Track inventory transactions**:
   - Log supply and usage of items.
3. **Manage purchase orders**:
   - Record supplier details and purchase orders.

---

## Sample Queries

### 1. View All Food Items
```sql
SELECT * FROM Items WHERE Category = 'Food';
```

### 2. Check Items Below Reorder Level
```sql
SELECT ItemName, StockQuantity, ReorderLevel
FROM Items
WHERE StockQuantity <= ReorderLevel;
```

### 3. View Supplier Details
```sql
SELECT SupplierName, ContactNumber, Email FROM Suppliers;
```

### 4. Inventory Transactions for Liquors
```sql
SELECT t.TransactionID, i.ItemName, t.TransactionType, t.Quantity, t.TransactionDate
FROM InventoryTransactions t
JOIN Items i ON t.ItemID = i.ItemID
WHERE i.Category = 'Liquor';
```

---

## Future Enhancements
- Integrate with hotel management systems for real-time inventory updates.
- Add functionality to forecast inventory needs based on usage trends.
- Implement role-based user access to secure sensitive data.
- Develop a web-based interface for easier management.

---

## License
This project is licensed under the MIT License. Feel free to use, modify, and distribute it as needed.

---

## Contact
For questions, suggestions, or collaboration, feel free to reach out:

- **Name**: Chirag Tiwari
- **Email**: chirag.tiwari@example.com
- **GitHub**: [github.com/chirag-tiwari](https://github.com/chirag-tiwari)

---
