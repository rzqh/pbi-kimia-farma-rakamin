# Kimia Farma Business Performance Analytics

## Overview

This project analyzes and visualizes business performance data for Kimia Farma using Python and Looker Studio. The workflow includes data cleaning, exploratory analysis, and dashboard creation to support business decision-making.

## Project Structure

- `cleaning-data/`: Jupyter Notebooks and scripts for data preprocessing and analysis.
- `dashboard/`: Contains dashboard access links and related documentation.
- `final-task/`: Source data files used for analysis.

## Data Source

The main dataset is located at:
```
final-task/bquxjob_5d887272_19905e15b14.csv
```
It contains transaction records, branch information, product details, and financial metrics.

## Data Cleaning & Analysis

- Performed using Python (Pandas, NumPy, Matplotlib, Seaborn).
- Steps include:
  - Data type conversion
  - Descriptive statistics
  - Distribution and outlier analysis
  - Visualization (histograms, boxplots)

See [`cleaning-data/rakaminxKF.ipynb`](cleaning-data/rakaminxKF.ipynb) for details.

## Dashboard

Business Performance Dashboard is available at:
[Looker Studio Dashboard](https://lookerstudio.google.com/reporting/35ec8f0d-34b9-4404-8a49-844d6b260ea9)

See [`dashboard/link.txt`](dashboard/link.txt) for the direct access link.

## Usage

1. Clone the repository.
2. Install dependencies:
   ```sh
   pip install pandas numpy matplotlib seaborn
   ```
3. Open and run the Jupyter Notebook in `cleaning-data/`.
4. Explore the dashboard via the provided link.

## Contributing

Contributions are welcome. Please follow conventional commit messages and ensure code quality.

## License

This project is