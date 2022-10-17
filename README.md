## First: Review Existing Unstructured Data and Diagram a New Structured Relational Data Model
Three sample data files: users, receipts, and brands. 
After reviewing their structures, 
for users, I simply converted it to csv,
for receipts, I separated **rewardsReceiptItemList** from receipts file and created another data file named after 'receipts_item' for **rewardsReceiptItemList**. 
for brands, I simply converted it to csv. 

### relational database
1. users table uses id to link userId in receipts table. (one to many)
2. receipts table uses id to link receipt_id in receipts_item table. (one to many)
3. brands table uses brandCode to link brandCode in receipts_item table. (one to one) 

### relational diagram
![This is an image](relationalDiagram.png)
