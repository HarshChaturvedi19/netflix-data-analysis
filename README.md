# Netflix Data Analysis Project

## 📚 Project Overview

This project involves **analyzing Netflix shows and movies** using **Python (Pandas, Matplotlib, Seaborn)** and **SQL (MySQL)**.  
The main goals were to **load, clean, transform, and explore** the dataset, extract valuable **insights**, and perform **analyses with both code and database queries**.

---

## 🔹 Tools and Techniques Used 🔹

- **Python** (with `pandas`, `numpy`) for data manipulation
- **Matplotlib** and **Seaborn** for data visualization
- **MySQL** for retrieving and analyzing data
- **Jupyter notebook** for coding and interactive analysis

---

## 🔹 File Information 🔹

- **File name**: `netflix.csv`
- **Table name (MySQL)**: `netflix`
- **Records**: 8,807
- **Columns**: 12 (show_id, type, title, director, cast, country, date_added, release_year, rating, duration, listed_in, description)

---

## 🔹 Project Process 🔹

### 1️⃣ Loading the Data
- Loaded CSV into a DataFrame
- Inspected first few and last few rows
- Checked for missing values
- Removed duplicates if any
- Fixed index after transformation

---

### 2️⃣ Cleaning the Data
- Removed or filled missing values
- Standardized text (lowercase)
- Removed whitespaces
- Handled invalid or erroneous data
- Filtered out invalid or erroneous rows

---

### 3️⃣ Transforming the Data
- Applied custom functions and transformation
- Encoded categorical variables
- Transformed numerical variables
- Split and manipulated columns
- Merges, concatenations, and group operations
- Pivoted or stacked the data when helpful

---

### 4️⃣ Exploratory Data Analysis (EDA)
- Descriptive statistics (mean, max, min, sum, count)
- Distribution analysis for numerical and categorical variables
- Detecting duplicates, missing values, or anomalies
- Analyzing relationships and patterns in the data

---

### 5️⃣ Visualizations (Matplotlib & Seaborn)
- Bar charts (number of shows by country)
- Pie charts (movie vs TV show)
- Scatter plots (Release Year vs Duration)
- Line graphs (number of shows by release year)
- Boxplots (Release Year, Rating)


---

## 🔹 SQL Queries 🔹

- Number of shows by duration
- Number of shows by genre
- Number of shows per release year
- TV shows vs movies per country
- Top 5 longest shows
- Top 5 earliest shows
- Number of shows with missing country or rating
- Distinct number of genres and countries
- List shows with multiple genres
- Number of shows by number of cast members
- Shows with extensive casts
- Number of shows by first character in title
- Number of TV shows and movies per rating and country
- Average number of shows per country

---

## 🔹 Key Insights 🔹

✅ The majority of content comprises **Movies and TV Shows** with numerous genres.  
✅ Some shows have extensive casts — more than 10 people.  
✅ The number of shows varies by country, with the USA, India, and UK having the highest number of titles.  
✅ The most frequently used genres include **International TV Shows, TV Dramas, Action, and Documentaries**.  
✅ Some shows have missing country or rating information.  
✅ The release year shows a clear upward trend in number of shows — reflecting growing content production in recent years.

---

## 🔹 Conclusion 🔹

This project demonstrates:
- How to perform **end-to-end data analysis** with **Python, SQL, and visualization libraries**.
- How to handle messy data, extract valuable information, and uncover patterns and trends.
- The power of both **Python’s data manipulation** capabilities alongside **SQL’s ability to perform aggregations and grouping efficiently**.

---

## 🔹 How to Run 🔹

1. **Clone or Download the repository.**
2. **Import the CSV into MySQL with table `netflix`.**
3. **Analyze the data with the provided SQL script.**
4. **Open the notebook to view transformation, EDA, and visualization steps.**

---

✨ **Thank you for reviewing this project!**  
If you have any questions or suggestions, please feel free to reach out.

