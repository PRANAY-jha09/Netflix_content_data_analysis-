```markdown
# 🧾 Netflix Content Portfolio Analysis – Shows & Movies Optimization

_Analyzing Netflix's global content library to optimize acquisitions, genre diversity, and viewer engagement using SQL, Python, and Tableu._

---

## 📌 Table of Contents
- <a href="#overview">Overview</a>
- <a href="#business-problem">Business Problem</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools & Technologies</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#data-cleaning--preparation">Data Cleaning & Preparation</a>
- <a href="#exploratory-data-analysis-eda">Exploratory Data Analysis (EDA)</a>
- <a href="#research-questions--key-findings">Research Questions & Key Findings</a>
- <a href="#dashboard">Dashboard</a>
- <a href="#how-to-run-this-project">How to Run This Project</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---
<h2><a class="anchor" id="overview"></a>Overview</h2>

This project evaluates Netflix's content portfolio across genres, age, geography, and ratings to drive data-informed content strategies. A full pipeline was built with SQL for ETL, Python for advanced analysis and stats testing, and Power BI for interactive dashboards.

---
<h2><a class="anchor" id="business-problem"></a>Business Problem</h2>

In the competitive streaming market, Netflix must optimize its library for retention and growth. This project addresses:
- Genre imbalances and diversity gaps
- Geographic content distribution for global expansion
- Content age and relevance for viewer churn reduction
- High-rated vs. underperforming titles
- Portfolio concentration risks by type/region

---
<h2><a class="anchor" id="dataset"></a>Dataset</h2>

- Netflix titles CSV (~8K+ shows/movies) from public sources
- Columns: title, type, director, cast, country, date_added, release_year, rating, duration, genres, description
- Enriched with geographic and age metrics

---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies</h2>

- SQL (CTEs, Window Functions, Aggregations)
- Python (Pandas, Matplotlib, Seaborn, SciPy)
- Power BI (DAX, Interactive Visuals)
- GitHub

---
<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```
netflix-content-analysis/
│
├── README.md
├── .gitignore
├── requirements.txt
├── Netflix Portfolio Report.pdf
│
├── notebooks/                  # Jupyter notebooks
│   ├── exploratory_data_analysis.ipynb
│   ├── netflix_portfolio_analysis.ipynb
│
├── scripts/                    # Python scripts for ETL
│   ├── data_ingestion.py
│   └── content_summary.py
│
├── dashboard/                  # Power BI files
│   └── netflix_portfolio.pbix
│
└── data/                       # Raw & processed CSVs
    ├── netflix_titles.csv
    └── content_summary.csv
```

---
<h2><a class="anchor" id="data-cleaning--preparation"></a>Data Cleaning & Preparation</h2>

- Handled missing values: ~5% in country/director (imputed/mode-filled)
- Parsed multi-genres into lists; exploded for analysis
- Calculated content age: (2025 - release_year)
- Filtered invalid ratings/durations; standardized countries (ISO codes)
- Created summary tables: genre counts, geo aggregates

---
<h2><a class="anchor" id="exploratory-data-analysis-eda"></a>Exploratory Data Analysis (EDA)</h2>

**Key Distributions:**
- Content Age: 70% released post-2010; oldest ~1920s classics
- Ratings: Skewed high (mean 7.0/10); TV-MA dominant
- Geography: US (45%), India (20%), UK (10%)

**Outliers:**
- Longest: 5+ hour docs/epics
- Genre Overlaps: Dramas in 60% titles

**Correlations:**
- Release Year & Ratings (0.12 weak positive)
- Duration & Ratings (-0.08 for movies)
- Genres & Countries (strong regional ties, e.g., Bollywood in India)

---
<h2><a class="anchor" id="research-questions--key-findings"></a>Research Questions & Key Findings</h2>

1. **Geographic Coverage**: US/India dominate (65%); only 20% from Africa/LatAm → expansion opportunities
2. **Portfolio Size by Type**: Movies (70%), TV Shows (30%) → diversify originals
3. **Content Age Breakdown**: 40% <5 years old; 25% >20 years → refresh legacy library
4. **Top Genres**: Dramas (25%), Comedies (15%), Thrillers (12%) → over-reliance risk
5. **Genre Diversity**: Treemap shows thrillers/dramas 50% share; niches like Anime <2%
6. **Ratings Distribution**: 35% rated 8+; highest in International (mean 7.4)
7. **Hypothesis Testing**: Significant difference in ratings by region (ANOVA p<0.01) → localize content

---
<h2><a class="anchor" id="dashboard"></a>Dashboard</h2>

Interactive Power BI dashboard highlights:
- Global geo map (content by country)
- Portfolio size/content age bars
- Genre diversity treemap/pie
- Top performers & ratings histograms

![Netflix Portfolio Dashboard](images/dashboard.png)

---
<h2><a class="anchor" id="how-to-run-this-project"></a>How to Run This Project</h2>

1. Clone the repository:
```bash
git clone https://github.com/yourusername/netflix-content-analysis.git
```
2. Install dependencies:
```bash
pip install -r requirements.txt
```
3. Ingest & process data:
```bash
python scripts/data_ingestion.py
python scripts/content_summary.py
```
4. Run notebooks:
   - `notebooks/exploratory_data_analysis.ipynb`
   - `notebooks/netflix_portfolio_analysis.ipynb`
5. Open dashboard:
   - `dashboard/netflix_portfolio.pbix`

---
<h2><a class="anchor" id="final-recommendations"></a>Final Recommendations</h2>

- **Acquire Regional Content**: Prioritize Africa/LatAm (20% gap) for 15% retention boost
- **Balance Genres**: Invest in niches (Anime, Docs) to hit 30% diversity
- **Content Refresh**: Phase out >20yr old low-raters; focus on 2015+ originals
- **Geo-Targeting**: India/US strongholds → tailor promos; test thrillers in thrill-heavy regions
- **Originals Strategy**: High-rated internationals → scale for global hits
- **Monitor Ratings**: Threshold 7.5+ for acquisitions

---
<h2><a class="anchor" id="author--contact"></a>Author & Contact</h2>

**PRANAY JHA**  
Data Analyst  
📧 Email: Pranayjha535@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/pranay-jha09/)  
🔗 
```
