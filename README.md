# 🏦 Anbessa Bank Database: Building, Analyzing & Modelling with MySQL and Excel
## 📌 Project Overview

This project focuses on designing, building, and analyzing a banking database system for Anbessa Bank. The goal is to model customer, transaction, and account data efficiently using MySQL for database management and Excel for reporting, visualization, and further analysis.

The project demonstrates:

- **Database Design & Schema Creation** in MySQL

- **Data Cleaning & Processing**

- **SQL Queries for Analysis & Insights**

- **Excel Integration** for reporting and visualization

- **Banking Data Modelling** to support decision-making
## 🎯 Objectives

- Build a **relational database** for banking operations.

- Normalize tables to reduce redundancy and ensure data integrity.

- Run **SQL queries** to analyze customer behavior, account activities, and transaction trends.

- Export and visualize insights in **Excel dashboards**.

- Provide a **data model** that can be scaled for real banking operations.
  
## 🛠️ Tools & Technologies

- **Database:** MySQL

- **Analysis & Visualization:** Microsoft Excel

- **Data Modelling:** Entity Relationship Diagram (ERD), Normalization

- **Other:** SQL Workbench / MySQL CLI
## 📂 Project Structure
```bash
Anbessa-Bank-Database/
│── data/                 # Raw & processed data files (CSV/Excel)
│── sql/                  # SQL scripts (schema, queries, stored procedures)
│── models/               # ER diagrams & data models
│── reports/              # Excel dashboards & reports
│── README.md             # Project documentation
```
## 🏗️ Database Design

- **Entities:** Customers, Accounts, Transactions, Loans, Branches

- **Relationships:**

   - One customer → Many accounts

   - One account → Many transactions

   - One branch → Many customers

   - One customer → Many loans

✅ Normalized database up to **3rd Normal Form (3NF)** to ensure efficiency.

## 🔍 Key SQL Queries & Analyses

- Customer segmentation (by balance, location, account type)

- Transaction trend analysis (daily, monthly, yearly)

- Loan repayment tracking

- Branch-level performance analysis

- Fraud detection indicators (suspicious transaction patterns)
  
## 📊 Excel Analysis & Reporting

- Imported **MySQL** query outputs into Excel

- Built **pivot tables** for account/transaction analysis

- Created **dashboards** for management insights

- Visualized **KPIs** such as:

  - Total deposits & withdrawals

  - Average loan repayment rates

  - Customer growth trends

## 🚀 How to Run the Project

1.Clone this repository:

```bash
git clone https://github.com/yourusername/Anbessa-Bank-Database.git
```

2.Import the SQL schema into your MySQL server:

```bash
mysql -u root -p < sql/anbessa_bank_schema.sql
```


3.Load sample data from ``/data`` folder into the database.

4.Run analysis queries in ``/sql/queries.sql``.

5.Export results and open ``/reports/AnbessaBank_Dashboard.xlsx`` for insights.

## 📌 Use Cases

- Banking data management system prototype

- Academic research project in **database** systems or data analysis

- Business case for financial institutions

## 📈 Future Enhancements

- Integration with **Power BI/Tableau** for advanced dashboards

- Automation of **ETL pipelines** for real-time updates

- Implementation of **machine learning models** for fraud detection & customer churn prediction
## 🤝 Contributing

Contributions are welcome! Please fork the repository and create a pull request with detailed explanations of changes.

## 📜 License

This project is licensed under the MIT License – free to use and modify.

## 👤 Author
**Bahre Hailemariam**  
📍 *Data Analyst & BI Developer \| 4+ Years Experience*\
📩 [Email Adress](bahre.hail@gmail.com) | 🌐[Portfolio](https://bahre-hailemariam-data-analyst.crd.co/) |💼[LinkedIn](https://www.linkedin.com/in/bahre-hailemariam/) | 📊[GitHub](https://github.com/BahreHailemariam)
