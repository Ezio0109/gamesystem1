# 🎮 Gamer Management System (MVC)

A robust, full-stack Spring Boot web application designed to manage a global roster of gamers and their associated video game libraries. This project demonstrates a deep understanding of **MVC Architecture**, **JPA Many-to-Many relationships**, and **dynamic frontend rendering** using JSP and Bootstrap.

---

## 🚀 Features

*   **Full CRUD Operations:** Add, view, and edit gamer profiles seamlessly.
*   **Many-to-Many Mapping:** Complex database relationship between Gamers and Video Games bridged by a junction table.
*   **Custom JPQL Queries:** Implementation of `INNER JOIN` queries to fetch combined data from multiple tables.
*   **H2 In-Memory Database:** Pre-populated with seed data (starring EzioW) for instant testing.
*   **Responsive UI:** Styled with Bootstrap 5 for a modern, gaming-centric aesthetic.

---

## 🛠️ Tech Stack

*   **Backend:** Java 21, Spring Boot 4.0.6, Spring Data JPA
*   **Frontend:** JSP, JSTL, Bootstrap 5
*   **Database:** H2 (In-Memory)
*   **Build Tool:** Maven

---

## 📐 Entity Relationship Design

The project utilizes a standard relational database approach to solve the Many-to-Many problem.

*   **Gamer (1)** ↔ **(M) gamer_library**
*   **VideoGame (1)** ↔ **(N) gamer_library**

This junction table (`gamer_library`) handles the mapping, ensuring that one gamer can own many titles, and one title can belong to many gamers.

---

