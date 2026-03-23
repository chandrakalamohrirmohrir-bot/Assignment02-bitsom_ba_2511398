## Storage Systems

In this architecture, multiple storage systems are used to handle different types of data and workloads efficiently. A relational database such as MySQL is used for OLTP operations, including storing patient records, appointments, and billing data. This ensures strong consistency and reliability for critical healthcare information.

A Data Warehouse is used for analytical processing and reporting. It stores cleaned and structured data from various sources, enabling hospital management to generate insights such as bed occupancy rates and departmental costs.

A Data Lake is used to store raw and unstructured data such as ICU monitoring streams, GPS logs, and medical images. This allows flexibility in storing large volumes of diverse data without requiring predefined schemas.

A Vector Database is used to support semantic search functionality. Patient records and documents are converted into embeddings, allowing doctors to query patient history using natural language and retrieve relevant results efficiently.

## OLTP vs OLAP Boundary

The OLTP system consists of the MySQL database, which handles real-time transactional operations such as patient registration, updates, and billing. These operations require high consistency and low latency.

The OLAP system begins once data is extracted from the OLTP system and loaded into the Data Warehouse through ETL processes. The warehouse is optimized for analytical queries and reporting, not for real-time transactions.

Thus, the boundary lies at the ETL layer, where transactional data is transformed and moved into analytical storage for reporting and insights.

## Trade-offs

One major trade-off in this architecture is increased system complexity. Using multiple storage systems such as MySQL, Data Lake, Data Warehouse, and Vector Database requires additional infrastructure, integration effort, and maintenance.

To mitigate this, a well-defined data pipeline and orchestration tools can be used to manage data flow efficiently. Automation of ETL processes and monitoring systems can reduce operational overhead. Additionally, using cloud-based managed services can simplify deployment and scalability.

Despite the complexity, this architecture provides high scalability, flexibility, and performance, making it suitable for a modern AI-powered hospital system.