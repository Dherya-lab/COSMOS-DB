# COSMOS-DB // Orbital Telemetry & Relational Database

An interactive 3D Astrophysical Observatory and **3NF/BCNF Relational Database Management System (DBMS)** web application built with **Three.js**, **AlaSQL**, and an integrated **Oracle SQL*Plus / MySQL 8.0** query studio.

## 1. Project Overview
**COSMOS-DB** bridges interactive 3D scientific visualization with relational database theory. Users can inspect procedural 3D celestial models, explore a real-time Solar System Orrery, and execute live SQL queries (`SELECT`, `INNER/LEFT JOIN`, `GROUP BY`, `HAVING`, `INSERT`, `DESC`, `SHOW TABLES`) directly inside the browser.

## 2. Relational Database Schema (3NF / BCNF)
The database consists of **8 normalized relational tables** enforced with Primary Key (`PK`) and Foreign Key (`FK`) constraints:

| Table Name | Primary Key | Foreign Keys | Description |
| :--- | :--- | :--- | :--- |
| `GALAXIES` | `galaxy_id` | — | Morphology, redshift ($z$), diameter, and central SMBH mass |
| `STAR_SYSTEMS` | `system_id` | `galaxy_id` | Spectral classifications, luminosity ($L_\odot$), effective temp (K), and metallicity |
| `CELESTIAL_BODIES` | `body_id` | `system_id` | Planetary mass ($M_\oplus$), mean radius, gravity, orbital period, and Habitability ESI |
| `ATMOSPHERES` | `atmo_id` | `body_id` | Surface barometric pressure, primary/secondary gas composition, and magnetosphere |
| `SPACE_AGENCIES` | `agency_id` | — | Headquarters, founding year, annual budgets, and primary launch vehicles |
| `SPACE_MISSIONS` | `mission_id` | `agency_id`, `target_body_id` | Launch dates, $\Delta v$ budgets, payload masses, mission statuses, and key findings |
| `OBSERVATORIES` | `obs_id` | `agency_id` | Orbital/ground telescopes, aperture sizes, spectral bands, and angular resolution |
| `SCIENTISTS_DISCOVERIES` | `disc_id` | `body_id`, `obs_id` | Historical astrophysical laws, equations, discoveries, and Nobel statuses |

## 3. Key Features
* **3D Celestial Observatory (Three.js):** 10 interactive procedural 3D models (Earth, Mars, Jupiter, Saturn, Neptune, The Sun, Gargantua Black Hole, Crab Pulsar, Andromeda Galaxy, and JWST) plus a **Live Solar System Orrery** mode.
* **Dual-Engine SQL Studio:** Execute custom SQL queries in real time and switch between **MySQL 8.0 Grid View** and **Oracle SQL*Plus ASCII Spool** output.
* **Dynamic Foreign Key Telemetry:** Clicking `Run JOIN` on any 3D celestial model automatically executes a multi-table `JOIN` across `CELESTIAL_BODIES`, `ATMOSPHERES`, `SPACE_MISSIONS`, and `SCIENTISTS_DISCOVERIES`.
* **4 Adaptive UI Themes:** Switch instantaneously between *Nebula Violet*, *Deep Obsidian*, *Solar Flare*, and *Starlight Day*.
* **One-Click `.SQL` Export:** Download the complete DDL (`CREATE TABLE`) and DML (`INSERT INTO`) script compatible with Oracle SQL*Plus and MySQL Workbench.

## 4. How to Run Locally or In-Browser
1. **Live Web App:** Open the deployed GitHub Pages link (or open `index.html` in any modern web browser).
2. **Local DBMS Execution:** Click **Export .SQL** in the top header and run the downloaded `.sql` script in **MySQL Workbench** or **Oracle SQL*Plus** (`@COSMOS_DB_3NF_Project.sql`).
