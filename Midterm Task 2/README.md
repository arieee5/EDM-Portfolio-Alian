# Midterm Lab Task 2: Data Cleaning and Transformation Using Power Query Editor
## Task Description: 
- To extract useful information from the file UncleanedDSJObs.csv taken from a Job Posting site available in Kaggle.
- To find out:
- -Which Job Roles pay the highest and least
- -What size companies pay the best
- -Where Job Roles or Job Titles pay the best and least in a specific state
## Dataset Before Cleaning and Transformation:

## Steps Performed in Data Cleaning and Transformation:
- Duplicated the raw data to preserve the original.
- Cleaned the salary estimate column by removing everything after the "(" symbol.
- Created Min Sal and Max Sal columns from the salary estimate.
- Added a new column Role Type to classify jobs as "data scientist", "data analyst", "data engineer", "machine learning engineer", or "other" based on the job title.
- Corrected the location column with custom states and split it into city and state abbreviation.
- Replaced incorrect state entries (e.g., "anne rundell" to "ma").
- Split the company size column to extract MinCompanySize and MaxCompanySize, and removed the word "employees".
- Replaced invalid or negative values:
- Competitors: replaced -1 with "n/a".
- Revenue: replaced negatives with 0.
- Industry: replaced -1 with "other".
- Cleaned company name by removing extra ratings or numbers at the end.
- Removed unnecessary columns like job descriptions.
- Duplicated the cleaned data as Sal By Role Type dup, selected Role Type, Min Sal, and Max Sal, converted salaries to currency, multiplied by 1000, and grouped by - Role Type to get average salaries.
- Created a reference as Sal By Role Size ref, selected Size, Min Sal, and Max Sal, multiplied salaries by 1000, and grouped by Size to get average salaries.
- Imported a State Mapping file to map state abbreviations to full state names and merged it with the dataset.
- Created a reference as Sal By State ref, selected State Full Name, Min Sal, and Max Sal, multiplied salaries by 1000, and grouped by State Full Name to get average salaries.
- Checked query dependencies to confirm correct relationships.

## Final Output
### Cleaned Data

### Sal By Role Type Dup
<img src="images/salbyroletypedup.png" alt="Alt Text" width="200" height="200">

### Sal By Role Size Ref
<img src="images/salbyrolesizeref.png" alt="Alt Text" width="200" height="200">

### Sal By State Ref
<img src="images/salbystateref.png" alt="Alt Text" width="400" height="100">

### Query Dependencies
<img src="images/query dependencies.png" alt="Alt Text" width="400" height="300">
