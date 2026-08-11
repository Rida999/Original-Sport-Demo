# 🏪 Original Sport

> **A modern, full-stack inventory management platform designed to simplify retail operations and showcase real-world stock management workflows.**

**Original Sport** is a dynamic inventory management application built with **React, Vite, Tailwind CSS, and TanStack Start**, designed to transform retail operations into a fast, intuitive, and polished experience. The platform combines a clean and responsive dashboard with practical inventory workflows, making it ideal for demonstrating how modern web technologies can be applied to real-world retail management.

The application provides a complete set of inventory and retail management features, including **product CRUD operations, inventory tracking, barcode scanning, receipt creation, archive access, and report generation**. Products can be quickly identified using the device's **camera to scan barcodes or product numbers**, or through a **USB barcode scanner** for fast and efficient inventory management.

The application connects to a **Supabase-hosted PostgreSQL backend**, providing reliable data persistence while supporting modern server/client rendering. A built-in **demo-friendly reset mechanism** allows sample data to be restored reliably, making the application easy to demonstrate, test, and develop.

With smooth local development, **SQL-driven database schema control**, a structured full-stack architecture, and **Vercel-ready deployment configuration**, Original Sport serves as a practical showcase of modern web application development and real-world retail management tooling.

---

## 🚀 Demo Access

Want to try **Original Sport**? You can access the application using the demo credentials below:

| Field           | Demo Credentials |
| --------------- | ---------------- |
| 👤 **Username** | `demo`           |
| 🔑 **Password** | `demo`           |

> 💡 These credentials are provided for demonstration purposes and allow you to explore the application's inventory management features without creating an account.

---

## ✨ Features

### 📦 Product & Inventory Management

* ➕ Create new products
* ✏️ Edit existing products
* 🗑️ Delete products
* 🔍 Search and manage inventory
* 📊 Track stock levels
* 🏷️ Manage product information and pricing
* 📋 View detailed product records
* 🔄 Update inventory through transactions
* 📷 Scan product barcodes using the device camera
* 🔢 Scan or enter product numbers for quick identification
* 🔌 Support USB barcode scanners for fast inventory lookup
* ⚡ Quickly locate products through barcode scanning
* 📦 Streamline inventory workflows with multiple scanning methods

### 🧾 Receipt Management

* 🛒 Create customer receipts
* 📄 Generate detailed transaction records
* 💰 Track quantities and prices
* 📦 Automatically update inventory after transactions
* 🗂️ Access previous receipts and transactions
* 🧾 Maintain structured sales records

### 🗃️ Archive System

* 📚 Access archived products and records
* 🔄 Restore demo data when needed
* 🧹 Keep active inventory organized
* 💾 Maintain historical records
* ♻️ Restore sample data reliably for demonstrations

### 📊 Reports & Dashboard

* 📈 Generate inventory and business reports
* 📊 Monitor important inventory information
* 🖥️ Centralized management dashboard
* ⚡ Fast navigation between different sections
* 📱 Responsive interface across different screen sizes
* 📋 Present important retail information in an organized format

### 📷 Barcode Scanning

Original Sport supports multiple ways to identify products, making the inventory workflow suitable for both demonstrations and real-world retail environments.

#### 📱 Camera Scanning

Use the device's camera to scan a product barcode directly from the inventory interface.

This is particularly useful when:

* Using a laptop or desktop without a dedicated scanner
* Managing inventory from a mobile device
* Quickly searching for a product
* Demonstrating the application without additional hardware

#### 🔌 USB Barcode Scanner

The application also supports **USB barcode scanners**.

A USB scanner behaves like a keyboard, allowing scanned barcode values to be entered directly into the application. This provides a fast workflow for retail environments where products need to be scanned repeatedly.

```text
📦 Product
    │
    ├── 📷 Camera
    │      └── Scan Barcode
    │
    ├── 🔌 USB Scanner
    │      └── Scan Barcode
    │
    └── 🔢 Manual Entry
           └── Enter Product Number
                    │
                    ▼
             🔍 Find Product
                    │
                    ▼
             📊 Inventory
```

---

## 🚀 Technology Stack

| Technology                       | Purpose                                                |
| -------------------------------- | ------------------------------------------------------ |
| ⚛️ **React**                     | User interface and component architecture              |
| ⚡ **Vite**                       | Fast development and build tooling                     |
| 🎨 **Tailwind CSS**              | Responsive UI and styling                              |
| 🚀 **TanStack Start**            | Full-stack React framework and server/client rendering |
| 🔥 **Supabase**                  | Backend infrastructure and database services           |
| 🐘 **PostgreSQL**                | Relational database powering Supabase                  |
| 🗄️ **SQL**                      | Database schema definition and management              |
| 📷 **Camera / Barcode Scanning** | Product identification through device cameras          |
| 🔌 **USB Barcode Scanner**       | Fast physical barcode scanning                         |
| ☁️ **Vercel**                    | Application deployment and hosting                     |

---

## 🏗️ Architecture

Original Sport follows a modern full-stack architecture with **React, Vite, and Tailwind CSS** powering the user interface, **TanStack Start** handling the application layer and server/client rendering, and **Supabase/PostgreSQL** providing backend services and persistent data storage.

```text
                    ┌─────────────────────┐
                    │      Original       │
                    │       Sport         │
                    └──────────┬──────────┘
                               │
                    ┌──────────▼──────────┐
                    │      React UI       │
                    │  Tailwind + Vite    │
                    └──────────┬──────────┘
                               │
                    ┌──────────▼──────────┐
                    │   TanStack Start    │
                    │ Server / Client     │
                    │    Rendering        │
                    └──────────┬──────────┘
                               │
              ┌────────────────▼────────────────┐
              │            Supabase             │
              │       Backend Services          │
              └────────────────┬────────────────┘
                               │
                    ┌──────────▼──────────┐
                    │     PostgreSQL      │
                    │      Database       │
                    └─────────────────────┘
```

---

## 🔥 Supabase Integration

Supabase provides the backend infrastructure for Original Sport, including the **PostgreSQL database** used to store and manage application data.

The application connects to Supabase through environment variables, keeping project configuration separate from the source code.

Typical configuration includes:

```env
VITE_SUPABASE_URL="your_supabase_project_url"
VITE_SUPABASE_ANON_KEY="your_supabase_anon_key"
```

> ⚠️ Never commit private Supabase service-role keys, database passwords, or other sensitive credentials to GitHub.

The **Supabase anonymous/public key** can be used by client applications, but database access should still be properly secured using **Row Level Security (RLS)** and appropriate Supabase policies where applicable.

---

## 🗄️ Database

Original Sport uses **PostgreSQL through Supabase** as its primary database.

The database is responsible for managing core application data such as:

* 📦 Products
* 📊 Inventory
* 🧾 Receipts
* 🗃️ Archived records
* 📈 Reports
* 🔄 Transaction data
* 🔢 Product and barcode information

The database structure is managed through **SQL-driven schema definitions**, providing greater control over the application's data model and making database changes easier to track and reproduce.

Because the PostgreSQL database is hosted by Supabase, the application does not require a locally hosted PostgreSQL server for normal development.

---

## 💻 Getting Started

### 📋 Prerequisites

Make sure you have the following installed:

* **Node.js**
* **npm**
* **Git**
* A **Supabase project**

For physical barcode scanning:

* 📷 A device with a supported camera for camera-based scanning, or
* 🔌 A compatible USB barcode scanner

### 📥 Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
```

Navigate to the project:

```bash
cd Original-Sport
```

Install dependencies:

```bash
npm install
```

### 🔐 Configure Environment Variables

Create a `.env` file in the project root:

```env
VITE_SUPABASE_URL="your_supabase_project_url"
VITE_SUPABASE_ANON_KEY="your_supabase_anon_key"
```

Replace the placeholder values with the credentials provided by your Supabase project.

> 💡 Keep your `.env` file private and make sure it is included in `.gitignore`.

### ▶️ Run Locally

Start the development server:

```bash
npm run dev
```

Build the application for production:

```bash
npm run build
```

---

## ☁️ Deployment

Original Sport is **Vercel-ready** and can be deployed directly from GitHub.

```text
👨‍💻 Local Development
        │
        ▼
   📦 Git Commit
        │
        ▼
   🐙 GitHub
        │
        ▼
   ▲ Vercel
        │
        ▼
   🌍 Production
        │
        ▼
   🔥 Supabase
        │
        ▼
   🐘 PostgreSQL
```

When deploying to Vercel, make sure the required Supabase environment variables are configured in:

**Vercel → Project → Settings → Environment Variables**

Once the GitHub repository is connected, new commits pushed to the repository can automatically trigger new Vercel deployments.

This allows the application to maintain a simple development workflow:

**Develop → Commit → Push → Build → Deploy**

---

## 🎯 Project Purpose

Original Sport was developed as a practical demonstration of a **modern retail inventory management system**.

The project combines multiple real-world workflows into one application:

**Product Management → Inventory Tracking → Barcode Scanning → Transactions → Receipts → Archives → Reports**

Rather than being limited to a basic CRUD application, Original Sport demonstrates how different business workflows can be integrated into a single full-stack application with a structured database, modern frontend architecture, cloud-based backend services, and hardware-compatible inventory workflows.

The project showcases practical experience with:

* ⚛️ Modern React development
* 🚀 Full-stack application architecture
* 🔥 Supabase integration
* 🐘 PostgreSQL database management
* 🗄️ SQL schema design
* 📷 Camera-based barcode scanning
* 🔌 USB barcode scanner integration
* 🎨 Responsive UI development
* ☁️ Cloud deployment
* 🔄 Demo and data management workflows

---

## 🔮 Future Improvements

Potential future enhancements include:

* 👤 Authentication and role-based access
* 🏪 Multi-store management
* 📱 Improved mobile experience
* 📊 Advanced analytics and business intelligence
* 🔔 Low-stock notifications
* 📦 Supplier management
* 👥 Customer management
* 💳 Payment integration
* 📈 Advanced sales dashboards
* 🌍 Multi-language support
* 🔐 Enhanced Row Level Security policies
* 📤 Data export and import functionality
* 📊 Advanced inventory forecasting
* 🖨️ Receipt printer integration
* 🏷️ Automatic barcode generation and printing
* 📦 Bulk inventory scanning

---

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

Create a new feature branch:

```bash
git checkout -b feature/your-feature
```

Stage your changes:

```bash
git add .
```

Commit your changes:

```bash
git commit -m "Add your feature"
```

Push the branch:

```bash
git push origin feature/your-feature
```

Then open a pull request describing your changes and improvements.

---

## ⭐ Final Notes

**Original Sport** brings together modern frontend development, cloud-based backend infrastructure, database-driven workflows, and practical retail tooling to create a realistic and polished inventory management experience.

Built with **React, Vite, Tailwind CSS, TanStack Start, Supabase, PostgreSQL, SQL, and Vercel**, the project demonstrates how modern technologies can be combined to create scalable, maintainable, and deployment-ready web applications.

With support for **camera-based barcode scanning, manual product identification, and USB barcode scanners**, Original Sport goes beyond a traditional inventory CRUD application and demonstrates a more practical approach to real-world retail operations.

> ⭐ **Original Sport — Modern inventory management, built for real-world retail workflows.**
