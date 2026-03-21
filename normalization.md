Normalization is essential because keeping all data in a single table
causes redundancy and anomalies. For example, customer details are
repeated across multiple rows, leading to update inconsistencies.
If one row is updated and others are not, data becomes unreliable.

Additionally, deleting an order may remove important customer or product
information, causing data loss. By splitting the data into multiple
tables such as Customers, Orders, and Products, redundancy is reduced,
and data integrity is maintained.

Thus, normalization is not over-engineering but a necessary step to
ensure consistency, scalability, and efficient data management.